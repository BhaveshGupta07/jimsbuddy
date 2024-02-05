import 'package:flutter/material.dart';
import 'package:flutter_auth/components/grid.dart';
import 'package:flutter_auth/Screens/BJMC/Playlist/components/Playlist1.dart';

class semestersp extends StatelessWidget {
  const semestersp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text('JIMSBUDDY'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16.0),
          childAspectRatio: 0.9,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          children: <Widget>[
            mygriditem(
                gridname:"Semester 1",gridimage:"assets/images/Semester1.png",color1:0xffee0000,color2:0xffeeee00,press: () {Navigator.push(context,MaterialPageRoute(builder: (context) {return playlist1();
            }
            ),
            );
            }),
            mygriditem(gridname:"Semester 2",gridimage:"assets/images/Semester2.png",color1:0xff0000ff,color2:0xffff00ff,press: () {Navigator.push(context,MaterialPageRoute(builder: (context) {return playlist2();
    }
    ),
    );
    }),
            mygriditem(gridname:"Semester 3",gridimage:"assets/images/Semester3.png",color1:0xff00ff00,color2:0xff00000f,press: () {Navigator.push(context,MaterialPageRoute(builder: (context) {return playlist3();
            }
            ),
            );
            }),
            mygriditem(gridname:"Semester 4",gridimage:"assets/images/Semester4.png",color1:0xff6a1b9a,color2:0xffd500f9,press: () {Navigator.push(context,MaterialPageRoute(builder: (context) {return playlist4();
            }
            ),
            );
            }),
            mygriditem(gridname:"Semester 5",gridimage:"assets/images/Semester5.png",color1:0xff004d40,color2:0xff1de9bc,press: () {Navigator.push(context,MaterialPageRoute(builder: (context) {return playlist5();
            }
            ),
            );
            }),
            mygriditem(gridname:"Semester 6",gridimage:"assets/images/Semester6.png",color1:0xff263238,color2:0xffe56c00,press: () {Navigator.push(context,MaterialPageRoute(builder: (context) {return playlist6();
            }
            ),
            );
            }),

          ],
        )

    );




  }
}
