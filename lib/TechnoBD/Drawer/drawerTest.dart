import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_of_the_weekt/TechnoBD/Drawer/page_1.dart';
import 'package:widget_of_the_weekt/TechnoBD/Drawer/page_2.dart';
import 'package:widget_of_the_weekt/TechnoBD/Drawer/page_3.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Widget'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.green,Colors.blue]
              )
          ),
        ),
      ),
      drawer: Drawer(
         child: ListView(
           children: [
             UserAccountsDrawerHeader(
                 accountName: Text('Riyazur Rohman Kawchar'),
                 accountEmail: Text('riyazurrohmankawchar@gmail.com'),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    ),
               currentAccountPicture:CircleAvatar(child:Text('RRK'),),
               otherAccountsPictures: [
                 Icon(Icons.camera),
                 CircleAvatar(child: Text('N'),
                 backgroundColor: Colors.redAccent,
                 )
               ],
             ),
            ListTile(
              title: Text('Page1'),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                print('Page1');
                Navigator.push(context, MaterialPageRoute(builder: (context){return Page1();}));
              },
            ),
             ListTile(
               title: Text('Page2'),
               trailing: Icon(Icons.arrow_forward),
               onTap: (){
                 print('Page2');
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>Page2()));
               },
             ),
             ListTile(
               title: Text('Page3'),
               trailing: Icon(Icons.arrow_forward),
               onTap: (){
                 print('Page3');
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>Page3()));
               },
             )
           ],
         ),
      ),
    );
  }
}


