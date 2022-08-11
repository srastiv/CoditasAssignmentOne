import 'package:flutter/material.dart';
import 'package:mi_card/music_play_function.dart';
import 'music_screen.dart';
import 'music_data.dart';
import 'package:provider/provider.dart';

class PlayButton extends StatelessWidget {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Trending Songs', style: TextStyle(color: Colors.black)),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Consumer<musicData>(
        builder: (context, musiccddata, child) {
          return ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(Provider.of<musicData>(context)
                        .songTile[index]
                        .songName),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(Provider.of<musicData>(context)
                            .songTile[index]
                            .artistName),
                        RaisedButton(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: flag ? Colors.blue : Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: flag
                              ? Text("PLAY")
                              : (Text(
                                  "PAUSE",
                                  style: TextStyle(color: Colors.red),
                                )),
                          onPressed: () {
                            //     context.read<musicData>().updatePlay();

                            Provider.of<musicData>(context, listen: false);

                            // setState(() {
                            //   if (flag) {
                            //     flag = false;
                            //   } else {
                            //     flag = true;
                            //   }
                            // });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => musicScreen(
                                  [index].toString(),
                                ),
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
          );
        },
      ),
    );
  }
}
