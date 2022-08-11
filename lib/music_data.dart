import 'music_elements.dart';
import 'music_play_function.dart';
import 'package:flutter/material.dart';

class musicData extends ChangeNotifier {
  final List<music_elements> songTile = [
    music_elements(
      songName: 'Party Monster',
      artistName: 'The Weeknd',
      //artistImage: Image.asset('assets/images/weeknd.jpg'),
    ),
    music_elements(
      songName: 'Terpene',
      artistName: 'Carbon Based Lifeforms',
    ),
    music_elements(
      songName: 'Let Somebody Go',
      artistName: 'Selena Gomez',
    ),
    music_elements(
      songName: 'Is there Someone Else',
      artistName: 'The Weeknd',
    ),
    music_elements(
      songName: 'Starboy',
      artistName: 'The Weeknd',
    ),
    music_elements(
      songName: "Where's My Love",
      artistName: 'SYML',
    ),
    music_elements(
      songName: 'Saturn',
      artistName: 'DeadMau5',
    ),
    music_elements(
      songName: 'Color Blind',
      artistName: 'Diplo & lil Xan',
    ),
    music_elements(
      songName: 'Perfect',
      artistName: 'Ed Sheeran',
    ),
    music_elements(
      songName: 'Off the Table',
      artistName: 'Ariana Grande ft. The Weeknd',
    ),
  ];
  notifyListeners();

  void updatePlay(MusicPlay music) {
    music.togglePlaying();
    notifyListeners();
  }
}
