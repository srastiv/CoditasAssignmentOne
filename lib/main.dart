import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'play_button.dart';
import 'models/music_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MusicDataProvider(),
      child: MaterialApp(
        home: PlayButton(),
      ),
    );
  }
}
