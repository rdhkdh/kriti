import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kriti/screens/menu_pg_gen.dart';

class restaurants extends StatelessWidget {
  const restaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Column(
          children: [
            Expanded(
              child: StreamBuilder <QuerySnapshot> (
                  stream: FirebaseFirestore.instance.collection('shopkeepers').snapshots(),
                  builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> querySnapshot){
                    if(querySnapshot.hasError) {return Text("Some error");}

                    if(querySnapshot.connectionState==ConnectionState.waiting) {return CircularProgressIndicator();}
                    else{
                      final list = querySnapshot.data!.docs; // ! indicates not null
                      return ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              tileColor: Colors.green[800],
                              title: Text(list[index]["shop_name"]),
                              subtitle: Text(list[index]["timing"]),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => menu_pg_gen()),
                                );
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





      //ListView(
        //children: [
          // GestureDetector(
          //   onTap: () => {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => menu_1()),  //put corresponding menu here
          //     )
          //   },
          //   child: Card(
          //     color: Colors.green[800],
          //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
          //     child: Column(
          //       children: <Widget>[
          //         ClipRRect(
          //           borderRadius: BorderRadius.all(Radius.circular(8.0)),
          //           child: Image.asset(
          //             'lib/assets/restaurants.jpeg',
          //             // width: 250,
          //             // height: 150,
          //             fit:BoxFit.fill,
          //           ),
          //         ),
          //         ListTile(
          //           title: Center(child: Text('Spectrum South Hub',
          //             style: TextStyle(
          //               fontWeight: FontWeight.bold,
          //               color: Colors.black,
          //             ),
          //           )),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: ListTile(
          //       leading: const Icon(Icons.coffee),
          //       title: Text('Spectrum South hub '),
          //       tileColor: Colors.amber,
          //       subtitle: Text( 'Status: open/closed' ),
          //     onTap: (){
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => menu_1()),
          //       );
          //     },
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: ListTile(
          //       leading: const Icon(Icons.coffee),
          //       title: Text('Foodie\'s World'),
          //       tileColor: Colors.amber,
          //       subtitle: Text( 'Status: open/closed' ),
          //     onTap: (){
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => menu_2()),
          //       );
          //     },
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: ListTile(
          //       leading: const Icon(Icons.coffee),
          //       title: Text('Cafe Coffee Day'),
          //       tileColor: Colors.amber,
          //       subtitle: Text( 'Status: open/closed' ),
          //     onTap: (){
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => menu_3()),
          //       );
          //     },
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: ListTile(
          //       leading: const Icon(Icons.coffee),
          //       title: Text('Blue Line Restaurant'),
          //       tileColor: Colors.amber,
          //       subtitle: Text( 'Status: open/closed' ),
          //     onTap: (){
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => menu_4()),
          //       );
          //     },
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: ListTile(
          //       leading: const Icon(Icons.coffee),
          //       title: Text('Florentine'),
          //       tileColor: Colors.amber,
          //       subtitle: Text( 'Status: open/closed' ),
          //     onTap: (){
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => menu_5()),
          //       );
          //     },
          //   ),
          // ),
        //],
      //),
    );
  }
}

