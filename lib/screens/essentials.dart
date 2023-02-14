import 'package:flutter/material.dart';

class essentials extends StatelessWidget {
  const essentials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Essential Item Shops')),
        backgroundColor: Colors.lightBlueAccent[100],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.local_grocery_store),
                title: Text('Khokha Rentals'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Status: open/closed' )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.local_grocery_store),
                title: Text('Market Complex supermarket'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Status: open/closed' )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.local_grocery_store),
                title: Text('Manas Laundry Shop'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Status: open/closed' )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.local_grocery_store),
                title: Text('Khokha Cycle Repair'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Status: open/closed' )
            ),
          ),
        ],
      ),
    );
  }
}
