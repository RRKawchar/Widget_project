import 'package:flutter/material.dart';

class SwitchListTileTest extends StatefulWidget {
  const SwitchListTileTest({Key? key}) : super(key: key);

  @override
  _SwitchListTileTestState createState() => _SwitchListTileTestState();
}

class _SwitchListTileTestState extends State<SwitchListTileTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SiwtchListTile Widget'),
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
  bool _svalue=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blue)
          ),
          child: SwitchListTile(
            value:_svalue ,
            onChanged: (value){
              setState(() {
                _svalue=value;
              });
              print(value);
            },
            activeColor: Colors.purple,
            activeTrackColor: Colors.greenAccent,
            inactiveTrackColor: Colors.black,
            secondary: Container(
                height: 50,
                width: 50,
                child: Icon(Icons.switch_camera_outlined)),
            selected: _svalue,
            title: Text('Title'),
            subtitle: Text('Sub title'),
            controlAffinity: ListTileControlAffinity.leading,

          ),
        ),
      ),
    );
  }
}
