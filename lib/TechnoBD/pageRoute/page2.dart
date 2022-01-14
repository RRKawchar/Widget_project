import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2Test extends StatefulWidget {
  const Page2Test({Key? key}) : super(key: key);

  @override
  _Page2TestState createState() => _Page2TestState();
}

class _Page2TestState extends State<Page2Test> {

 // late int messge;

  @override
  Widget build(BuildContext context) {

    var data=ModalRoute.of(context)!.settings.arguments as Map<String, Object>;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Page2'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text('ID : ${data['id']}'),
              SizedBox(height: 20,),
              Text('Name : ${data['name']}'),
              SizedBox(height: 20,),
              Text('Phone : ${data['phone']}'),
              SizedBox(height: 20,),
              Text('Address : ${data['address']}'),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){
                   Navigator.pop(context);
                  },
                  child: Text('Go Back')
              )
            ],
          ),
        ),
      ),
    );
  }
}
