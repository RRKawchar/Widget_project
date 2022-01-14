import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioButtonTest extends StatefulWidget {
  const RadioButtonTest({Key? key}) : super(key: key);

  @override
  _RadioButtonTestState createState() => _RadioButtonTestState();
}

class _RadioButtonTestState extends State<RadioButtonTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button Widget'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.green,Colors.blue]
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

  int _value=0;

  void method(var value){
       setState(() {
      _value=value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          children: [
            Radio(
                value: 1,
                groupValue: _value,
               onChanged: (value){
                method(value);
               },

            ),
            Radio(
                value: 2,
                groupValue: _value,
                onChanged: (value){
                  method(value);
                }
            ),
            Radio(
                value: 3,
                groupValue: _value,
                onChanged: (value){
                  method(value);
                }
            ),
            Radio(
                value: 4,
                groupValue: _value,
                onChanged: (value){
                  method(value);
                }
            ),
          ],
        ),
      ),
    );
  }
}


