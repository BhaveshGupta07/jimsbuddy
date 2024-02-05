import 'package:flutter/material.dart';
import 'package:flutter_auth/components/grid.dart';
import 'package:flutter_auth/Screens/Playlist/Semester.dart';
import 'package:flutter_auth/Screens/Paper/Semester.dart';

class homescreen2 extends StatelessWidget {
  const homescreen2({Key key}) : super(key: key);

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
                gridname:"Library",gridimage:"assets/images/lib.png",color1:0xffee0000,color2:0xffeeee00,press: () {Navigator.push(context,MaterialPageRoute(builder: (context) {return semesters();
            }
            ),
            );
            }

            ),
            mygriditem(gridname:"Playlist",gridimage:"assets/images/Playlist2.png",color1:0xff0000ff,color2:0xffff00ff,press: () {Navigator.push(context,MaterialPageRoute(builder: (context) {return semestersp();
            }
            ),
            );
            }),
            mygriditem(gridname:"Paper",gridimage:"assets/images/Paper.png",color1:0xff00ff00,color2:0xff00000f,press: () {Navigator.push(context,MaterialPageRoute(builder: (context) {return semesters();
            }
            ),
            );
            }),

          ],
        )

    );




  }
}
