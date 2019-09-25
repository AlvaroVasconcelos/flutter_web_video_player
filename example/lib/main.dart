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
              src: 'https://file-examples.com/wp-content/uploads/2017/04/file_example_MP4_480_1_5MG.mp4',
            ),
          ),
        ),
      ),
    );
  }
}