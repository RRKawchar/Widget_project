import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text('Welcome Page'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green,Colors.yellow]
              )
            ),
          ),
         ),
        body: Center(
          child: SingleChildScrollView(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [

                   Text('Welcome to FoodPanda',
                   style: TextStyle(color: Colors.purple,fontSize: 25,
                   fontWeight: FontWeight.bold
                   ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(right: 40),
                     child: Image.asset(
                       "imagess/food_order.png",
                       height: 200,
                     ),
                   ),
                   SizedBox(height: 20,),
                   _LoginButton(),
                   SizedBox(height: 20,),
                   _SignInButton()
                 ],
              ),
            ),
          ),
        ),
      ),
    );
  }

 Widget _LoginButton() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: Colors.red),
        color: Colors.blue
      ),
      height: 40,
      width: 200,
      child: FlatButton(
        onPressed: (){
          print('Login ');
        },
        child: Text('Login ',
        style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
        ),

      ),
    );

  }
  Widget _SignInButton() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: Colors.red),
          color: Colors.blue
      ),
      height: 40,
      width: 200,
      child: FlatButton(
        onPressed: (){
          print('Sign up ');
        },
        child: Text('SignUp ',
          style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
        ),

      ),
    );

  }
}
