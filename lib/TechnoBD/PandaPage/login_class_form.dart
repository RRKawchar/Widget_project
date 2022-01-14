import 'package:flutter/material.dart';

class LoginClassExt extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  Container(
     height: 300,
     width: 300,
     decoration: BoxDecoration(
         color: Colors.grey[200]
     ),
     child: Padding(
       padding: const EdgeInsets.all(16.0),
       child: Column(
         children: [
           SizedBox(height: 10,),
           TextField(
             decoration: InputDecoration(
                 hintText: 'Enter your name',
                 hintStyle: TextStyle(fontSize: 15.0),
                 labelText: 'Name',
                 border: OutlineInputBorder(),
                 prefixIcon: Icon(Icons.account_circle)
             ),
           ),
           SizedBox(height: 10,),
           TextField(
             decoration: InputDecoration(
                 hintText: 'Enter your password',
                 hintStyle: TextStyle(fontSize: 15.0),
                 labelText: 'password',
                 border: OutlineInputBorder(),
                 prefixIcon: Icon(Icons.account_circle)
             ),
             obscureText:true,
             obscuringCharacter: '*',
           ),
           SizedBox(height: 20,),
           ElevatedButton(
               onPressed: (){
                 print('Login test');
               },
               child: Text('LogIn')
           )
         ],
       ),
     ),
   );
  }
}