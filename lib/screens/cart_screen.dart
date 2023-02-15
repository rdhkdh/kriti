import 'package:flutter/material.dart';
import 'package:kriti/main.dart';
import 'package:kriti/screens/qr_pg.dart';

class CartScreen extends StatefulWidget {
  static String id='cart_screen';
  CartScreen({Key? key,required this.item}) : super(key: key);
  final Map<String, dynamic> item;
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // Map<String,int> item={'Pizza':200,'Burger':300};
  @override
  Widget build(BuildContext context) {
    num total=0;
    for (var k in (widget.item).values) {
      total=total+k;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: Column(
        children: [
          ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: (widget.item).length,
              itemBuilder:(BuildContext context, int index){
                String key = (widget.item).keys.elementAt(index);
                return new Column(
                  children: <Widget>[
                    new ListTile(
                      title: new Text("$key"),
                      subtitle: new Text("${(widget.item)[key]}"),
                    ),
                    new Divider(
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
                Text("Total price"),
                Text("${total}"),
              ],
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          ElevatedButton(
            onPressed: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QR()),
              );
            },
            child: Text("Pace Order"),
          ),
        ],
      ),
    );
  }
}
