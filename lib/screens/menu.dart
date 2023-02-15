import 'package:flutter/material.dart';
import 'package:kriti/screens/cart_screen.dart';

class menu extends StatefulWidget {
  menu({Key? key}) : super(key: key);
  static String id="menu";
  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  int count=0;
  int c1=0,c2=0,c3=0;


  @override
  Widget build(BuildContext context) {
    late Map<String, int> cart_items= {'Sandwich': c1*30, 'Noodles': c2*50, 'Pizza': c3*200};
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text(' _Restaurant name_ Menu')),
        backgroundColor: Colors.lightBlueAccent[100],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile( //use onTap method for click functionality
              title: Text('Sandwich'),
              tileColor: Colors.greenAccent,
              subtitle: Text('Price: Rs30'),
              onTap: () {
                setState(() {count++;});
                setState(() {c1++;});
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Noodles'),
              tileColor: Colors.greenAccent,
              subtitle: Text('Price: Rs50'),
              onTap: () {
                setState(() {count++;});
                setState(() {c2++;});
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Pizza'),
              tileColor: Colors.greenAccent,
              subtitle: Text('Price: Rs200'),
              onTap: () {
                setState(() {count++;});
                setState(() {c3++;});
              },
            ),
          ),
          SizedBox(
            width: 200.0,
            height: 380.0,
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
          cart_items.forEach((i,j){
            print(i);
            print(j);
          });
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
