import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTest extends StatefulWidget {
  const ListTest({Key? key}) : super(key: key);

  @override
  _ListTestState createState() => _ListTestState();
}

class _ListTestState extends State<ListTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView and ListTile '),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.red,Colors.blue]
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
    return ListView(
      children: [
        SizedBox(height: 10,),
        ListTile(
          title: Text('Item 1'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing:Icon(Icons.arrow_forward),
        ),
        SizedBox(height: 10,),
        ListTile(
          title: Text('Item 1'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green
            ),
          ),
          trailing:Icon(Icons.arrow_forward),
        ),
        SizedBox(height: 10,),
        ListTile(
          title: Text('Item 1'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue
            ),
          ),
          trailing:Icon(Icons.arrow_forward),
        ),
        SizedBox(height: 10,),
        ListTile(
          title: Text('Item 1'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.cyanAccent
            ),
          ),
          trailing:Icon(Icons.arrow_forward),
        ),
      ],
    );
  }
}
