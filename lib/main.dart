import 'package:flutter/material.dart';
import 'package:mi_card/music_screen.dart';
import './music_elements.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PlayButton());
  }
}

class PlayButton extends StatefulWidget {
  const PlayButton({Key key}) : super(key: key);

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  bool flag = true;
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Trending Songs', style: TextStyle(color: Colors.black)),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Card(
              elevation: 1,
              child: ListTile(
                title: Text(songTile[index].songName),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(songTile[index].artistName),
                    RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side:
                            BorderSide(color: flag ? Colors.blue : Colors.red),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: flag
                          ? Text("PLAY")
                          : (Text(
                              "PAUSE",
                              style: TextStyle(color: Colors.red),
                            )),
                      onPressed: () {
                        setState(() {
                          if (flag) {
                            flag = false;
                          } else {
                            flag = true;
                          }
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                MusicScreen(songTile[index].songName),
                          ),
                        );
                        debugPrint('executed play button');
                      },
                    ),
                  ],
                ),
                tileColor: Colors.white,
                trailing: Image.network(
                    'https://images.macrumors.com/t/vxLWzn9mUoWB93SzMmDXZIpOjWQ=/1600x0/article-new/2018/05/apple-music-note-800x420.jpg'), //songTile[index].artistImage,
              ),
            ),
          );
        },
      ),
    );
  }
}
