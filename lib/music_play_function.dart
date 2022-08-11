import 'package:flutter/material.dart';

class MusicPlay {
  bool isPlaying;

  MusicPlay({this.isPlaying = true});
  void togglePlaying() {
    isPlaying
        ? Text(
            "PAUSE",
            style: TextStyle(color: Colors.red),
          )
        : Text('PLAY');

    //isPlaying = !isPlaying;
  }
}
