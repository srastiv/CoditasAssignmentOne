import 'package:flutter/material.dart';
import 'music_screen.dart';
import 'models/music_provider.dart';
import 'package:provider/provider.dart';

class PlayButton extends StatefulWidget {
  @override
  State<PlayButton> createState() => _PlayButtonState();
}

MusicDataProvider tiletile = MusicDataProvider();

class _PlayButtonState extends State<PlayButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Trending Songs', style: TextStyle(color: Colors.black)),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Consumer<MusicDataProvider>(
        builder: (context, musicdata, child) {
          return ListView.builder(
            itemCount: tiletile.songTile.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 1,
                child: ListTile(
                  title: Text(Provider.of<MusicDataProvider>(context)
                      .songTile[index]
                      .songName),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(Provider.of<MusicDataProvider>(context)
                          .songTile[index]
                          .artistName),
                      RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Provider.of<MusicDataProvider>(context,
                                          listen: false)
                                      .songTile[index]
                                      .isPressed
                                  ? Colors.blue
                                  : Colors.red),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Provider.of<MusicDataProvider>(context,
                                    listen: false)
                                .songTile[index]
                                .isPressed
                            ? Text("PLAY")
                            : (Text(
                                "PAUSE",
                                style: TextStyle(color: Colors.red),
                              )),
                        onPressed: () {
                          setState(() {
                            // play.togglePlaying();
                            if (Provider.of<MusicDataProvider>(context,
                                    listen: false)
                                .songTile[index]
                                .isPressed) {
                              Provider.of<MusicDataProvider>(context,
                                      listen: false)
                                  .songTile[index]
                                  .isPressed = false;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => musicScreen(
                                    Provider.of<MusicDataProvider>(context)
                                        .songTile[index]
                                        .songName
                                        .toString(),
                                  ),
                                ),
                              );
                            } else {
                              Provider.of<MusicDataProvider>(context,
                                      listen: false)
                                  .songTile[index]
                                  .isPressed = true;
                            }
                          });

                          debugPrint('executed play button');
                        },
                      ),
                    ],
                  ),
                  tileColor: Colors.white,
                  trailing: Image.asset("assets/images/weeknd.jpg"),
                  //songTile[index].artistImage,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
