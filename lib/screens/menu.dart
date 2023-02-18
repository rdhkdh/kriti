import 'package:flutter/material.dart';
import 'package:kriti/assets/menu_list.dart';
import 'package:kriti/screens/cart_screen.dart';

class menu extends StatefulWidget {
  menu({Key? key}) : super(key: key);
  static String id="menu";
  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  int count=0;
  late Map<String, int> cart_items= {'Sandwich': 0, 'Noodles': 0, 'Pizza': 0};
  Map<String, int> menu= MenuList.menu_list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text(' _Restaurant name_ Menu')),
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
                    onTap: () {
                      setState(() {count++;});
                      setState(() {
                        int price=(menu[key]) ?? 0;
                        cart_items[key]=((cart_items[key]??0)+((price)??0));
                      });
                    },
                  ),
                );
              }),
          SizedBox(
            width: 200.0,
            height: 300.0,
          ),
          Container(
            child: Center(child: Text('Cart items: ${count}')),
            margin: const EdgeInsets.all(10.0),
            color: Colors.amber[100],
            width: 100,
            height: 48,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          // cart_items.forEach((i,j){
          //   print(i);
          //   print(j);
          // });
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CartScreen(item: cart_items)),
          );
        },
        child: Icon(Icons.add_shopping_cart_rounded),
      ),
    );
  }
}
