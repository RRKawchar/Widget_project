import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_of_the_weekt/TechnoBD/push_and_pop/contact_2.dart';

class Contact1 extends StatelessWidget {
  const Contact1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contact page 1'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Contact2(message:'Hello')));
            },
            child: Text('Next Page'),
          ),

        ),
      ),
    );
  }
}
