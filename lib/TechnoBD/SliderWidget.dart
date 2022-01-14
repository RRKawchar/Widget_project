import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Widget'),
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

  double _sValue=2.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red)
        ),
        child: Column(
          children: [
            Slider(
                value: _sValue,
                min: 0.0,
                max: 10.0,
                onChanged: (value){
                  setState(() {
                    _sValue=value;
                  });
                 print(value);
                },
                  activeColor: Colors.purple,
                   inactiveColor: Colors.yellowAccent,
                   divisions: 8,
                  label: 'Volume',

            ),
            Text('Range Volume : $_sValue'),
          ],
        ),

      ),
    );
  }
}

