import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerTest extends StatelessWidget {
  const ContainerTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Widget'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.yellow,Colors.blueAccent]
              )
          ),
        ),
      ),
      body: Container(
        height: 300,
        width: 300,
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.zero,
        child: Text('Container'),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.green,
            shape: BoxShape.rectangle,
            border: Border.all(
                color: Colors.red,
                width:2

            )
        ),
        transform: Matrix4.rotationZ(.5),
      ),
    );
  }
}
