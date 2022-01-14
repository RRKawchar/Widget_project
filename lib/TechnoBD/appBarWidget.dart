import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarTest extends StatefulWidget {
  const AppBarTest({Key? key}) : super(key: key);

  @override
  _AppBarTestState createState() => _AppBarTestState();
}

class _AppBarTestState extends State<AppBarTest> with SingleTickerProviderStateMixin{

  //late TabController _tabController;

  @override
  void initState() {
   // _tabController=TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
           appBar: AppBar(
             backgroundColor: Colors.blue,
             title: Text('AppBar Widget'),
             centerTitle: true,
             elevation: 30.0,
             shadowColor: Colors.yellow,
             toolbarOpacity: .9,
             //toolbarHeight: 70.0,
             shape: RoundedRectangleBorder(
               //borderRadius: BorderRadius.circular(10)
             ),
             leading: Icon(Icons.menu),
             actions: [
               Icon(Icons.favorite),
               IconButton(
                 icon: Icon(Icons.search),
                 onPressed: (){
                   print('Search');
                 },
               ),
               Icon(Icons.more_vert)
             ],

             bottom: TabBar(
              // controller: _tabController,
               tabs: [
               Tab(
                 icon: Icon(Icons.person),
                 text: 'Person',
               ),
                 Tab(
                   icon: Icon(Icons.card_travel),
                   text: 'Travel',
                 ),
                 Tab(
                   icon: Icon(Icons.shopping_cart),
                   text: 'Shoppping',
                 ),
               ],

             ),

           ),
          body: TabBarView(
           // controller: _tabController,
            children: [
              Center(child: Text('Person')),
              Center(child: Text('Travel')),
              Center(child: Text('Shopping'))
            ],
          ),
          bottomNavigationBar: Material(
            color: Colors.lime,
            child: TabBar(
              labelColor: Colors.lightBlue,
              unselectedLabelColor: Colors.blueGrey,
             // controller: _tabController,

              tabs: [
                Tab(
                  icon: Icon(Icons.person),
                  text: 'Person',
                ),
                Tab(
                  icon: Icon(Icons.card_travel),
                  text: 'Travel',
                ),
                Tab(
                  icon: Icon(Icons.shopping_cart),
                  text: 'Shoppping',
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
