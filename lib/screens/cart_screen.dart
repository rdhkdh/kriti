import 'package:flutter/material.dart';
import 'package:kriti/main.dart';
import 'package:kriti/screens/payment_gateway.dart';
import 'package:kriti/screens/qr_pg.dart';

class CartScreen extends StatefulWidget {
  static String id='cart_screen';
  CartScreen({Key? key, required this.item}) : super(key: key);
  final Map<String, dynamic> item;
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  @override
  Widget build(BuildContext context) {
    num total=0;
    for (var k in (widget.item).values) {
      total=total+k;
    }
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text('My Cart',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.amber[700],
      ),
      body: Column(
        children: [
          ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: (widget.item).length,
              itemBuilder:(BuildContext context, int index){
                String key = (widget.item).keys.elementAt(index);
                return Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text("$key"),
                        subtitle: Text("${(widget.item)[key]}"),
                        tileColor: Colors.green[800],
                      ),
                    ),
                    const Divider(
                      height: 2.0,
                    ),
                  ],
                );
              }),
          SizedBox(
            height: 8.0,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Total price", style: TextStyle(color: Colors.white) ),
                Text("${total}", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // Background color
            ),
            onPressed: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => payment(title: 'Payment for Order', total: total)),
              );
            },
            child: Text("Pay and Place Order", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
