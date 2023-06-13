import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'cart_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: menu_pg_gen(),
  ));
}

class menu_pg_gen extends StatefulWidget {
  const menu_pg_gen({Key? key}) : super(key: key);

  @override
  State<menu_pg_gen> createState() => _menu_pg_genState();
}

class _menu_pg_genState extends State<menu_pg_gen> {
  int count=0,flag=0; //flag for first time initialization only
  late Map<String, int> cart_items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
        title: const Text('Menu', style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
        Expanded(
          child: StreamBuilder <QuerySnapshot> (
            stream: FirebaseFirestore.instance.collection('shopkeepers').doc('spectrum south hub').collection('menu').snapshots(),
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> querySnapshot){
              if(querySnapshot.hasError) {return Text("Some error");}

              if(querySnapshot.connectionState==ConnectionState.waiting) {return CircularProgressIndicator();}
              else{
                final list = querySnapshot.data!.docs; // ! indicates not null
                if(flag==0) {
                  cart_items = Map.fromIterable(list, key: (e) => e["name"], value: (e) => 0);
                  flag=1;
                }
                return ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          tileColor: Colors.green[800],
                          title: Text(list[index]["name"]),
                          subtitle: Text(list[index]["price"]),
                          onTap: () {
                            setState(() {
                              count++;
                              int price=( int.parse(list[index]["price"]) ) ?? 0;
                              var name=list[index]["name"];
                              cart_items['${name}']=((cart_items['${name}']??0)+((price)??0));
                            });
                          },
                        ),
                      );
                    },
                );
              }
          }
          ),
        ),
    ]
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: ()
        {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CartScreen(item: cart_items)),
          );
        },
        child: Icon(Icons.add_shopping_cart_rounded, color: Colors.white,),
      ),
    );
  }
}


