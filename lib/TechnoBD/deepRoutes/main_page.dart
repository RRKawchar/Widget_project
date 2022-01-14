import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_of_the_weekt/TechnoBD/deepRoutes/page1.dart';
import 'package:widget_of_the_weekt/TechnoBD/deepRoutes/page2.dart';
import 'package:widget_of_the_weekt/TechnoBD/deepRoutes/page3.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {

        Page1.routName:(context)=>Page1(),
        Page2.routName:(context)=>Page2(),
        Page3.routName:(context)=>Page3(),

      },

      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          title: Text('Main Page'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.orange,Colors.blue]
              )
            ),
          ),
        ),
        body: _myBody(),
      ),
    );
  }
}
class _myBody extends StatefulWidget {
  const _myBody({Key? key}) : super(key: key);

  @override
  _myBodyState createState() => _myBodyState();
}

class _myBodyState extends State<_myBody> {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             SizedBox(height: 10,),
             ElevatedButton(
                 onPressed: (){
                   Navigator.pushNamed(context,Page1.routName, arguments:
                   {
                     "name":"Riyazur Rohman Kawchar",
                     "fname":"Md Nabir Uddin",
                     "mname":"Shahena Akter",
                     "religion":"Islam",
                     "phone":01852538935,
                   }
                   );

                 },
                 child: Text('Go to Page 1')
             ),
             SizedBox(height: 10,),
             ElevatedButton(
                 onPressed: (){
                   Navigator.pushNamed(context, Page2.routName,arguments:
                   {
                     "name":"Riyazur Rohman Kawchar",
                     "fname":"Md Nabir Uddin",
                     "mname":"Shahena Akter",
                     "religion":"Islam",
                     "phone":01852538935,
                   }
                   );
                 },
                 child: Text('Go to Page 2')
             ),
             SizedBox(height: 10,),
             ElevatedButton(
                 onPressed: (){
                   Navigator.pushNamed(context, Page3.routName,arguments:
                   {
                     "name":"Riyazur Rohman Kawchar",
                     "fname":"Md Nabir Uddin",
                     "mname":"Shahena Akter",
                     "religion":"Islam",
                     "phone":01852538935,
                   }
                   );
                 },
                 child: Text('Go to Page 3')
             ),
           ],
         ),
      ),
    );
  }

}


