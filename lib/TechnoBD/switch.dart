import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({Key? key}) : super(key: key);

  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Widget'),
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

  bool _sValue=false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green)
          ),
          child: Switch(
              value: _sValue,
              onChanged: (value){
                setState(() {
                  _sValue=value;
                });
               print(value);
              },
            activeColor: Colors.purple,
            activeTrackColor:Colors.redAccent,
            inactiveTrackColor: Colors.black,
          )
        ),
      ),
    );
  }
}

