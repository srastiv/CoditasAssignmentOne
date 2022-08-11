import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'play_button.dart';
import 'music_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => musicData(),
      child: MaterialApp(
        home: PlayButton(),
      ),
    );
  }
}
