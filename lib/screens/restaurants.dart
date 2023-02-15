import 'package:flutter/material.dart';
import 'menu.dart';

class restaurants extends StatelessWidget {
  const restaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Restaurants')),
        backgroundColor: Colors.lightBlueAccent[100],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.coffee),
                title: Text('Roasted Pot'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Status: open/closed' ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => menu()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.coffee),
                title: Text('Core 1 Canteen'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Status: open/closed' )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.coffee),
                title: Text('Hashtag'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Status: open/closed' )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.coffee),
                title: Text('Brahma canteen'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Status: open/closed' )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.coffee),
                title: Text('Florentine'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Status: open/closed' )
            ),
          ),
        ],
      ),
    );
  }
}

