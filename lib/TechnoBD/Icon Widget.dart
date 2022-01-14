import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  _IconWidgetState createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Widget'),
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
int volume=0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        color:Colors.grey,
        child: Column(
          children: [
          Icon(
            Icons.volume_up,
            color: Colors.redAccent,
            size: 50,
          ),
            SizedBox(height: 20,),
            IconButton(
                onPressed: (){
               setState(() {
                 if(volume<20){
                   ++volume;
                 }


                 print('On pressed');
               });
                },
                icon: Icon(Icons.volume_up,
                size: 50,
                )
            ),
            SizedBox(height: 50,),

            Text('$volume')


          ],
        ),
      ),
    );
  }
}
