import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  static const routName='/page2';

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    var _data=ModalRoute.of(context)!.settings.arguments as Map<String,Object>;
    return Scaffold(
      appBar: AppBar(
        title: Text('Page two'),
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
                onPressed: (){
                  Navigator.pop(context);
                },
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
