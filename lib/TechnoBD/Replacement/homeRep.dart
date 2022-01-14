import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeReplacement extends StatefulWidget {
  const homeReplacement({Key? key}) : super(key: key);

  @override
  _homeReplacementState createState() => _homeReplacementState();
}

class _homeReplacementState extends State<homeReplacement> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: _MyBody(),
      ),

    );
  }
}
class _MyBody extends StatefulWidget {
  const _MyBody({Key? key}) : super(key: key);

  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<_MyBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Text('Home Page'),
            SizedBox(height: 10,),

            TextButton(
                onPressed: (){
             Navigator.pop(context);
                },
                child: Text('Back')
            )
          ],
        ),
      ),
    );
  }
}

