import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridVieBuilder extends StatefulWidget {
  const GridVieBuilder({Key? key}) : super(key: key);

  @override
  _GridVieBuilderState createState() => _GridVieBuilderState();
}

class _GridVieBuilderState extends State<GridVieBuilder> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('GridView Widget'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue,Colors.yellow]
              )
          ),

        ),
      ),
      body:Body(),
    );
  }
}
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<int>_list=[];

  @override
  void initState() {
    for(int i=1;i<=50;i++){
      _list.add(i);
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: _list.length,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            //  mainAxisSpacing: 10,
         // crossAxisSpacing: 10
        ),
        itemBuilder: (BuildContext context,int index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            color: Colors.green,
            child: Text('${_list[index]}'),
            alignment: Alignment.center,
          ),
        );
        }
    );
  }
}

