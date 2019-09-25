import 'dart:ui' as ui;
import 'dart:html';
import 'package:flutter/material.dart';

class WebVideoElement extends StatefulWidget {
  const WebVideoElement({Key key, this.src, this.width, this.height, this.startAt,this.autoplay,this.controls})
      : super(key: key);

  final int width;
  final int height;
  final String src;
  final double startAt;
  final bool autoplay;
  final bool controls;

  @override
  _WebVideoElementState createState() => _WebVideoElementState();
}

class _WebVideoElementState extends State<WebVideoElement> {
  @override
  void initState() {
    super.initState();
    ui.platformViewRegistry.registerViewFactory(
        widget.src,
        (int viewId) {
          final video = VideoElement()
            ..width = widget.width
            ..height = widget.height
            ..src = widget.src + '#t=${widget.startAt}'
            ..autoplay = widget.autoplay
            ..controls = widget.controls
            ..style.border = 'none';
          return video ;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: HtmlElementView(viewType: widget.src),
    );
  }
}