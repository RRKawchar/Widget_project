import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_class_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Login page'),
    centerTitle: true,
    flexibleSpace: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: [Colors.green,Colors.blue]
      )
      ),
      ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Column(
              children: [
                Text('Login Page',
                style: TextStyle(color: Colors.purple,fontStyle: FontStyle.italic,
                fontSize: 30.0
                ),
                ),
                //_loginForm()
               // LoginForm()
                LoginClassExt()
              ],
            ),
          ),
        ),
      ),
    );
}
// Widget _loginForm(){
//     return null;
// }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
