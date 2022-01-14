import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Center(

        child: Column(
          children: [
            RaisedButton(
                onPressed:(){
                  print('OnPressed');
                },
                child: Text('RaisedButton'),
                color: Colors.green,
            ),
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: (){
                  print('ElevatedButon');
                },
                child: Text('ElevatedButton'),

            ),
            SizedBox(height: 10,),
            FlatButton(
                onPressed: (){
                  print('FlatButton onpressed');
                },
                child: Text('FlatButton'),
              color: Colors.amber,
            ),
            SizedBox(height: 10,),
            TextButton(
                onPressed: (){
                  print('TextButton Onpressed');
                },
                child: Text('TextButton'),

            ),
            SizedBox(height: 10,),
            ElevatedButton.icon(
                onPressed: (){
                  print('This is ElevatedButton.Icon');
                },
                icon: Icon(Icons.account_circle),
                label: Text('ElevatedButton.Icon')
            ),
             SizedBox(height: 10,),
            IconButton(
                onPressed: (){
                  print('This is icon button');
                },
              icon: Icon(Icons.security),
            ),
            SizedBox(height: 10,),
            FloatingActionButton(
                onPressed: (){
                  print('This is FloatingActionButton');
                },
              child: Text('Click'),
            )
          ],
        ),
      ),
    );
  }
}
