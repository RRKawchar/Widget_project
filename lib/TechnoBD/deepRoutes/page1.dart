import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
 static const routName='/page1';


  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {

    var _data=ModalRoute.of(context)!.settings.arguments as Map<String,Object>;

    return Scaffold(
       appBar: AppBar(
         title: Text('Page One'),
       ),
      body:Center(
     child: Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 10,),
        Text('${_data['name']}'),
        SizedBox(height: 10,),
        Text('${_data["fname"]}'),
        SizedBox(height: 10,),
        Text('${_data["mname"]}'),
        SizedBox(height: 10,),
        Text('${_data["religion"]}'),
        SizedBox(height: 10,),
        Text('${_data["phone"]}'),
        SizedBox(height: 10,),
        TextButton.icon(
          onPressed: (){  Navigator.pop(context);},
          icon: Icon(Icons.arrow_back),
          label: Text('Back'),


        )

      ],
    ),
    ),
    ),
    );
  }
}
