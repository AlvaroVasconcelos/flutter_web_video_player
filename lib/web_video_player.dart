import 'package:flutter/widgets.dart';

import 'web_video_element.dart';

class WebVideoPlayer extends StatelessWidget {
  const WebVideoPlayer({
    Key key,
    @required this.src,
    this.startAt = 000,
    this.autoPlay = false,
    this.controls = true,
  }) : super(key: key);

  final String src;
  final double startAt;
  final bool autoPlay;
  final bool controls;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return WebVideoElement(
          width: constraints.maxWidth.round(),
          height: constraints.maxHeight.round(),
          src: src,
          startAt: startAt,
          autoplay: autoPlay,
          controls: controls,
        );
      },
    );
  }
}
