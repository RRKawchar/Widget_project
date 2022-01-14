import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Widget'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue,Colors.amber]
              )
          ),
        ),
      ),
      body: Body(),
    );
  }
}
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String txt='';
  bool _secure=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(

            decoration: InputDecoration(
              hintText: 'Enter your name',
              hintStyle: TextStyle(
                color: Colors.red,
                fontSize: 18
              ),
              labelText: 'Name',
              labelStyle: TextStyle(
                color: Colors.orange,
                fontSize: 18
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0)
              ),
              prefixIcon: Icon(Icons.account_circle),
               suffixIcon: IconButton(
                 icon: Icon(_secure?Icons.remove_red_eye:Icons.security),
                 onPressed: () {
                   setState(() {
                     _secure=!_secure;
                   });

                 },


               ),

              errorText: txt.isEmpty?'error':null
            ),
            keyboardType: TextInputType.text,
              obscureText: _secure,
              obscuringCharacter: '*',
              maxLength: 10,
           // maxLines: 2,
              onChanged: (value){

              txt=value;
          },
            onSubmitted: (value){
              setState(() {
                txt=value;
              });

              print(value);
            },


          )
        ],
      )
      ,
    );
  }
}

