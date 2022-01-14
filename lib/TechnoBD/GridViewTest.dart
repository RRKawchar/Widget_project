import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_of_the_weekt/TechnoBD/DepListView.dart';

class GridViewTest extends StatefulWidget {
  const GridViewTest({Key? key}) : super(key: key);

  @override
  _GridViewTestState createState() => _GridViewTestState();
}

class _GridViewTestState extends State<GridViewTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title:Text('GridView Widget'),
    flexibleSpace: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: [Colors.blueGrey,Colors.yellow]
    )
    ),

    ),
    ),
      body:Body(),
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
    return GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      children: [
         Container(
           color: Colors.blue,
           child: Text('Hi'),
           alignment: Alignment.center,
         ),
        Container(
          color: Colors.blue,
          child: Text('Hi'),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.blue,
          child: Text('Hi'),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.blue,
          child: Text('Hi'),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.blue,
          child: Text('Hi'),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.blue,
          child:Image.asset('Hi'),
          alignment: Alignment.center,
        ),
      ],
    );
  }
}

