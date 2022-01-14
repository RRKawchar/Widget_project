import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowAndColumn extends StatefulWidget {
  const RowAndColumn({Key? key}) : super(key: key);

  @override
  _RowAndColumnState createState() => _RowAndColumnState();
}

class _RowAndColumnState extends State<RowAndColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row and Column Widget'),
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
class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Hi '),
        Text('This '),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hi'),
            Text('Hi'),
          ],
        ),
        Text('is '),
        Text('Row ')
      ],
    );
  }
}

