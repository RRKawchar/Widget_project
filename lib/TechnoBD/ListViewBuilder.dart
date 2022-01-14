import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  _ListViewBuilderState createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.builder widget '),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.red,Colors.blue]
              )
          ),
        ),
      ),
      body: MyBody(),
    );
  }
}
class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);


  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {

  List<int> _list=[];



  @override
  void initState(){
   for(int i=1;i<=50;i++){
     _list.add(i);
   }
  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(10.0),
      itemCount: _list.length,
        itemBuilder: (BuildContext context,int index){

          return ListTile(

             title: Text('Item-${_list[index]}'),
            contentPadding: EdgeInsets.all(5.0),
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue

              ),
            ),
            trailing: Icon(Icons.arrow_forward),
          );
        }
    );
  }
}
