import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioListTileWidget extends StatefulWidget {
  const RadioListTileWidget({Key? key}) : super(key: key);

  @override
  _RadioListTileWidgetState createState() => _RadioListTileWidgetState();
}

class _RadioListTileWidgetState extends State<RadioListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioListTile Widget'),
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

  int _svalue=0;

  void method(var value){
    setState(() {
      _svalue=value;
    });
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(

        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red
          )
        ),
        child: Column(
          children: [
            RadioListTile(
                value: 1,
                groupValue: _svalue,
                onChanged: (value){
                  method(value);
                },
                title: Text('Flutter'),
              subtitle: Text('Flutter Development'),
              secondary: Icon(Icons.flutter_dash_outlined),
              activeColor: Colors.purple,
              selected: _svalue==1?true:false,
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            RadioListTile(
                value: 2,
                groupValue: _svalue,
                onChanged: (value){
                  method(value);
                },
              title: Text('ios'),
              subtitle: Text('IOS Development'),
              secondary: Icon(Icons.phone_iphone),
              activeColor: Colors.purple,
              selected: _svalue==2?true:false,
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            RadioListTile(
                value: 3,
                groupValue: _svalue,
                onChanged:method,

              title: Text('Android'),
              subtitle: Text('android Development'),
              secondary: Icon(Icons.android),
              activeColor: Colors.purple,
              selected: _svalue==3?true:false,
              controlAffinity: ListTileControlAffinity.trailing,
            ),
          ],
        ),
      ),
    );
  }
}

