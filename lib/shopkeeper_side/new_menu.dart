import 'package:flutter/material.dart';
import '../utils/menu_list.dart';

class new_menu extends StatefulWidget {
  final String item;
  final String price;
  const new_menu({Key? key, required  this.item, required this.price}) : super(key: key);
  @override
  State<new_menu> createState() => _menuState();
}

class _menuState extends State<new_menu> {
  int count=0;
  Map<String, int> menu= MenuList.menu_list_1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('My Menu')),
        backgroundColor: Colors.lightBlueAccent[100],
      ),
      body: Column(
        children: [
          ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: menu.length,
              itemBuilder:(BuildContext context, int index){
                String key = menu.keys.elementAt(index);
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new ListTile( //use onTap method for click functionality
                    title: Text('$key'),
                    tileColor: Colors.greenAccent,
                    subtitle: Text('Price: Rs${menu[key]}'),
                    // onTap: () {
                    //   setState(() {count++;});
                    //   setState(() {});
                    // },
                  ),
                );
              }),
        ],
      ),
      
    );
  }
}
