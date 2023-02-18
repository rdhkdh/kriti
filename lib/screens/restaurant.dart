import 'package:flutter/material.dart';
import 'edit.dart';

class RestaurantScreen extends StatefulWidget {
  RestaurantScreen({Key? key}) : super(key: key);
  static String id="restaurant_orders";
  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  int count=0;
  int c1=0,c2=0,c3=0;

  @override
  Widget build(BuildContext context) {
    late Map<String, int> order_received= {'Sandwich': c1*30, 'Noodles': c2*50, 'Pizza': c3*200};
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Orders Received')),
        backgroundColor: Colors.lightBlueAccent[100],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile( //use onTap method for click functionality
              title: Text('Sandwich'),
              tileColor: Colors.greenAccent,
              subtitle: Text('quantity: 2'),
              onTap: () {
                setState(() {count++;});
                setState(() {c1++;});
              },
              // trailing: MaterialButton(
              //   onPressed: () => print('select'),
              //   child: Text('Approve',),
              //   color: Colors.amberAccent
              // ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Noodles'),
              tileColor: Colors.greenAccent,
              subtitle: Text('quantity: 2'),
              onTap: () {
                setState(() {count++;});
                setState(() {c2++;});
              },
             //  trailing: MaterialButton(
             //   onPressed: () => print('select'),
             //   child: Text('Approve',),
             //   color: Colors.amberAccent
             // ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Pizza'),
              tileColor: Colors.greenAccent,
              subtitle: Text('quantity: 2'),
              onTap: () {
                setState(() {count++;});
                setState(() {c3++;});
              },
             //  trailing: MaterialButton(
             //   onPressed: () => print('select'),
             //   child: Text('Approve',),
             //   color: Colors.amberAccent
             // ),
            ),
          ),
          Expanded(child: SizedBox(
            width: 200.0,
            height: 300.0,
          )),

          Expanded(child: ElevatedButton(
            onPressed: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyCustomForm()),
              );
            },
            child: Text("Edit menu"),
          )),
        ],
      ),
    );
  }
}
