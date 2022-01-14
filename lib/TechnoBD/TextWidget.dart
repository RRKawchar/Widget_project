import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Text Widget'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue,Colors.yellow]
              )
          ),

        ),
      ),
      body:Body(),
    );
  }
}
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.blueGrey,
     child: Text.rich(
        TextSpan(
          text: 'Hi',
          style: TextStyle(color: Colors.amber),
          children: [
            TextSpan(
              text: 'This is',
              style: TextStyle(color: Colors.redAccent,fontSize: 18)
            ),
            TextSpan(
                text: 'Text Example',
                style: TextStyle(color: Colors.yellowAccent,fontSize: 15)
            ),
          ]
        )
     ),
     //  child: Text('Hi,This is text example,I am Riyazur Rohman Kawchar',
     // textAlign: TextAlign.center,
     //    //textScaleFactor: 2.0,
     //    maxLines: 2,
     //    overflow: TextOverflow.ellipsis,
     //    style: TextStyle(
     //      color: Colors.yellowAccent,
     //      fontSize: 22,
     //      fontStyle:FontStyle.italic,
     //      fontWeight: FontWeight.w500,
     //      letterSpacing: 2.0,
     //      wordSpacing: 10,
     //      fontFamily: 'ad.ttf'
     //    ),
     //  )


    );
  }
}
