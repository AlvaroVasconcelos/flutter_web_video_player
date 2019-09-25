import 'package:flutter/material.dart';
import 'package:flutter_web_video_player/flutter_web_video_player.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(8),
            child: WebVideoPlayer(
              src: 'https://www.sample-videos.com/video123/mp4/240/big_buck_bunny_240p_1mb.mp4',
            ),
          ),
        ),
      ),
    );
  }
}