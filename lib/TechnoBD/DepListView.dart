import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_of_the_weekt/TechnoBD/ContainerTest.dart';

class DepListView extends StatefulWidget {
  const DepListView({Key? key}) : super(key: key);

  @override
  _DepListViewState createState() => _DepListViewState();
}

class _DepListViewState extends State<DepListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dep ListView widget'),
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
  final items = List.generate(100, (counter) => 'Item: $counter');
  int index=0;
  List<int> _list=[];

  @override
   void initState(){
     for(int i=1;i<=100;i++){
      _list.add(i);
     }
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: BuildText(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list),
            label: 'Basic'

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_rounded),
              label: 'Vertical'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.line_style),
              label: 'Horizontal'
          ),
        ],
       onTap: (int index){
          setState(() {
            this.index=index;
          });
       },
      ),
    );
  }

  Widget BuildText(){
    if(index==0){
      return buildBasicListView();
    }
    else if(index==1){
      return buildVerticalListView();
    }
    else {
      return buildHorizontalListView();
    }

  }

  Widget buildBasicListView(){
    return ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown.shade900,
              child: Text('RRK'),
            ),
            title: Text('Riyazur Rohman kawchar'),
            subtitle: Text('Flutter Developer'),
            trailing: Icon(Icons.star,color: Colors.orange,),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown.shade900,
              child: Text('RH'),
            ),
            title: Text('Rifat Hossain'),
            subtitle: Text('IOS Developer'),
            trailing: Icon(Icons.star,color: Colors.orange,),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown.shade900,
              child: Text('EH'),
            ),
            title: Text('Emon Hossain'),
            subtitle: Text('Android Developer'),
            trailing: Icon(Icons.star,color: Colors.orange,),
          ),
        ],
    );
  }
  Widget buildVerticalListView(){
    return ListView.separated(
       separatorBuilder: (BuildContext context,int index){
         return Divider(
           color: Colors.black,
         );

       },
      itemCount: _list.length,
      itemBuilder: (BuildContext context, int index) {
         return ListTile(
           title: Text('Item:-${_list[index]}'),
         );
      },
      
    );
  }
  Widget buildHorizontalListView() {
    return ListView.separated(
      padding: EdgeInsets.all(16),
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => Divider(
        color: Colors.black,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          width: 100,
          height: 50,
          child: ListTile(
            title: Text(items[index]),
          ),
        );
      },
    );
  }
}
