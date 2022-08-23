import 'music_elements.dart';
import 'package:flutter/material.dart';

class MusicDataProvider extends ChangeNotifier {
  final List<music_elements> songTile = [
    music_elements(
      isPressed: true,
      songName: 'Party Monster',
      artistName: 'The Weeknd',
      artistImage: Image.asset('assets/images/weeknd.jpg'),
    ),
    music_elements(
      isPressed: true,
      songName: 'Terpene',
      artistName: 'Carbon Based Lifeforms',
    ),
    music_elements(
      isPressed: true,
      songName: 'Let Somebody Go',
      artistName: 'Selena Gomez',
    ),
    music_elements(
      isPressed: true,
      songName: 'Is there Someone Else',
      artistName: 'The Weeknd',
      artistImage: Image.asset('assets/images/weeknd.jpg'),
    ),
    music_elements(
      isPressed: true,
      songName: 'Starboy',
      artistName: 'The Weeknd',
      artistImage: Image.asset('assets/images/weeknd.jpg'),
    ),
    music_elements(
      isPressed: true,
      songName: "Where's My Love",
      artistName: 'SYML',
    ),
    music_elements(
      isPressed: true,
      songName: 'Saturn',
      artistName: 'DeadMau5',
    ),
    music_elements(
      isPressed: true,
      songName: 'Color Blind',
      artistName: 'Diplo & lil Xan',
    ),
    music_elements(
      isPressed: true,
      songName: 'Perfect',
      artistName: 'Ed Sheeran',
    ),
    music_elements(
      isPressed: true,
      songName: 'Off the Table',
      artistName: 'Ariana Grande ft. The Weeknd',
    ),
  ];
  notifyListeners();
}
