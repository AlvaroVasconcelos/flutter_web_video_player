# Flutter web video player
[![pub package](https://img.shields.io/badge/Pub-v0.0.1-red)](https://pub.dev/packages/flutter_web_video_player)

A video player package for Flutter web.

## Usage example
![](https://img.shields.io/badge/Pub-v0.0.1-red)


``` dart 
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

```
##### Issues and feedback 
Please file issues to send feedback or report a bug. Thank you!

