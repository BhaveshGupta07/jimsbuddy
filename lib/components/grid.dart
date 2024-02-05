import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class mygriditem extends StatelessWidget {
  final String gridname;
  final String gridimage;
  final Function press;
  final int color1;
  final int color2;

  const mygriditem({
    Key key,
    this.gridname,
    this.gridimage,
    this.press,
    this.color1,
    this.color2

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          gradient: new LinearGradient(
            colors:[
              Color(color1),
              Color(color2),
            ],
            begin: Alignment.centerLeft,
            end: new Alignment(1.0, 1.0),
          )
      ),
      child: Stack(
        children: <Widget>[
          Opacity(
            opacity:0.3,
            child: Container(
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  image: DecorationImage(
                    image: new AssetImage(gridimage),
                    fit:BoxFit.fill,
                  )
              ),

            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(child: Text('JOB',style: TextStyle(color: Colors.white,fontSize: 16.0),)),
                    SizedBox(width: 10.0,),
                    Container(child: Icon(FontAwesomeIcons.compass,color: Colors.white,)),
                    SizedBox(width: 10.0,),
                    Container(child: Text('GUIDE',style: TextStyle(color: Colors.white,fontSize: 16.0),)),

                  ],
                ),
              ),

              SizedBox(width: 10.0,),
              Container(child: Text(gridname,style: TextStyle(color: Colors.white,fontSize: 24.0,),textAlign: TextAlign.center,)),
              SizedBox(width: 10.0,),
              Container(child: IconButton(icon: Icon(Icons.next_week_outlined),onPressed: press,color: Colors.white,),)

            ],

          )
        ],
      ),
    );
  }
  }

