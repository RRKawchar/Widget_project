import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GestureDectectorTest extends StatefulWidget {
  const GestureDectectorTest({Key? key}) : super(key: key);

  @override
  _GestureDectectorTestState createState() => _GestureDectectorTestState();
}

class _GestureDectectorTestState extends State<GestureDectectorTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GestureDetector Widget'),
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
    return GestureDetector(
      onTap: (){
        print('onPressed');

        var snackBar=SnackBar(content: Text('This is GestureDetector'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Center(
        child: Container(
          height: 50,
          width: 100,
          child: Text('Click me'),
          alignment: Alignment.center,
          color: Colors.blue,
        ),
      ),
    );
  }
}

