import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact2 extends StatelessWidget {
  // const Contact2({Key? key}) : super(key: key);

  String message;

  // Contact2(String message){
  //   this.message=message;
  // }
  //Contact2(this.message);
  Contact2({required this.message});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Contact page 2'),
            flexibleSpace: Container(
              decoration:BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.yellow,Colors.blue]
                )
              ),
            ),
          ),
          body: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(message),
                SizedBox(height: 10,),
                ElevatedButton(
                  child: Text('Get Back'),
                  onPressed:(){
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ),
        ),
    );
  }
}
