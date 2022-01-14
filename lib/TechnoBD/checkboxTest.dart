import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox Widget'),
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
      padding: const EdgeInsets.all(16.0),
      child: Container(
       decoration: BoxDecoration(
         border: Border.all(color: Colors.purple)
       ),
        child: Transform.scale(
          scale: 1.50,
          child: Checkbox(
            value: _check,
            onChanged: (status){
              print(status);
              setState(() {
                _check=status!;
              });
            },
            activeColor: Colors.lime,
            checkColor: Colors.red,
            //tristate: true,
          ),
        ),
      ),
    );
  }
}

