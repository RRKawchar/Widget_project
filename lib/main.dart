import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'TechnoBD/backDataPass/main_Page_2.dart';

void main(){

  runApp(myApp());

}
class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home:MainPage(),

    );

  }
}

