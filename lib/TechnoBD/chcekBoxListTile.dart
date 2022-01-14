import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxListTileTest extends StatefulWidget {
  const CheckBoxListTileTest({Key? key}) : super(key: key);

  @override
  _CheckBoxListTileTestState createState() => _CheckBoxListTileTestState();
}

class _CheckBoxListTileTestState extends State<CheckBoxListTileTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxListTile Widget'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.green,Colors.yellow]
              )
          ),
        ),
      ),
      body: _Body(),
    );
  }
}
class _Body extends StatefulWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  bool _check=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red)
        ),
        child: CheckboxListTile(
          value: _check,
          onChanged:(value){
            print(value);
            setState(() {
              _check=value!;
            });
          } ,
          activeColor: Colors.green,
          checkColor: Colors.red,
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          secondary: Container(
              height: 50,
              width: 50,
              child: Icon(Icons.favorite)),
          selected: _check,
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ),
    );
  }
}
