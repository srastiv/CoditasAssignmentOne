import 'package:flutter/material.dart';

class musicScreen extends StatelessWidget {
  String title;
  musicScreen(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Player', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Text(' ${title} is playing'),
      ),
    );
  }
}
