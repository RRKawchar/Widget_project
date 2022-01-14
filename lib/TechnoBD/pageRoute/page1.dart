import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_of_the_weekt/TechnoBD/pageRoute/page2.dart';

class Page1Screen extends StatefulWidget {
  const Page1Screen({Key? key}) : super(key: key);

  @override
  _Page1ScreenState createState() => _Page1ScreenState();
}

class _Page1ScreenState extends State<Page1Screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/page1': (context) => Page2Test()},
      home: _myHome(),
    );
  }
}

class _myHome extends StatefulWidget {
  const _myHome({Key? key}) : super(key: key);

  @override
  _myHomeState createState() => _myHomeState();
}

class _myHomeState extends State<_myHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One '),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/page1',
                        arguments: {
                       "id": 1,
                       "name": "Kawchar",
                       "phone":01852538935,
                       "address":"Feni Sadar,Feni"

                    });
                  },
                  child: Text('Next Page'))
            ],
          ),
        ),
      ),
    );
  }
}
