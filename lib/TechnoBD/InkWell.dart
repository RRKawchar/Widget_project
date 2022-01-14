import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InkWellWidget extends StatefulWidget {
  const InkWellWidget({Key? key}) : super(key: key);

  @override
  _InkWellWidgetState createState() => _InkWellWidgetState();
}

class _InkWellWidgetState extends State<InkWellWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell Widget'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green,Colors.yellow]
            )
          ),
        ),
      ),
      body: Body(),
    );
  }
}
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print('OnPressed');
      },
      child: Center(
        child: Container(

           margin: EdgeInsets.only(top: 20.0),
          height: 50,
          width: 100,
          child: Text('Click me'),
        ),
      ),
    );
  }
}
