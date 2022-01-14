import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  _StackWidgetState createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Stack Widget'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueGrey,Colors.yellow]
            )
          ),

        ),
      ),
      body: MyBody(),

    );
  }
}
class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
     child: Stack(
       overflow: Overflow.visible,
      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.redAccent,
        ),
        Positioned(
          top: 0,
          left: 10,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
        ),
        Positioned(

          bottom: -25,
          right: 10,
          child: Container(
            height: 50,
            width: 50,
            color: Colors.blue,
          ),
        ),
      ],
    ),
    );
  }
}

