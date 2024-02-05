import 'package:flutter/material.dart';
import 'package:flutter_auth/components/grid.dart';
import 'package:flutter_auth/Screens/Home/home2.dart';
import 'package:flutter_auth/Screens/BBA/Home3.dart';
import 'package:flutter_auth/Screens/BJMC/Home4.dart';

class homescreen extends StatelessWidget {
  const homescreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text('JIMSBUDDY'),
        ),
        body: GridView.count(
          crossAxisCount: 1,
          padding: EdgeInsets.all(16.0),
          childAspectRatio: 2.0,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          children: <Widget>[
            mygriditem(
                gridname:"B.C.A",gridimage:"assets/images/Playlist2.png",color1:0xffee0000,color2:0xffeeee00,press: () {Navigator.push(context,MaterialPageRoute(builder: (context) {return homescreen2();
    }
    ),
              );
    }

    ),
            mygriditem(gridname:"B.B.A",gridimage:"assets/images/Playlist2.png",color1:0xff0000ff,color2:0xffff00ff,press: () {Navigator.push(context,MaterialPageRoute(builder: (context) {return homescreen3();
            }
            ),
            );
            }),
            mygriditem(gridname:"B.J.M.C",gridimage:"assets/images/Playlist2.png",color1:0xff00ff00,color2:0xff00000f,press: () {Navigator.push(context,MaterialPageRoute(builder: (context) {return homescreen4();
            }
            ),
            );
            }),

          ],
        )

    );




  }
}
