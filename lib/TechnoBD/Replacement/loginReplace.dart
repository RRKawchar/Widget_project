import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homeRep.dart';

class LoginReplacement extends StatefulWidget {
  const LoginReplacement({Key? key}) : super(key: key);

  @override
  _LoginReplacementState createState() => _LoginReplacementState();
}

class _LoginReplacementState extends State<LoginReplacement> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/homepage':(context)=>homeReplacement(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
          border: Border.all(color: Colors.red)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
               Image.asset('imagess/flutteri.png'),
               SizedBox(height: 20,),
               Text('Login')
              ],
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(20.0),

                decoration: BoxDecoration(

                ),
                child:TextField(

                  decoration: InputDecoration(
                    hintText: 'Enter you email',
                    labelText: 'Email',
                   border: OutlineInputBorder()
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),

                decoration: BoxDecoration(

                ),
                child:TextField(

                  decoration: InputDecoration(
                      hintText: 'Enter your password',
                      labelText: 'Password',
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200.0),
                child: TextButton(
                    onPressed: (){},
                    child: Text('Forget Password')
                ),
              ),
            SizedBox(height: 10,),
              ElevatedButton.icon(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/homepage');
                  },
                  icon: Icon(Icons.login),
                  label: Text('Log-In')
              ),
              SizedBox(height: 320.0,)
            ],
          ),

        ),
      ),
    );
  }
}
