import 'package:flutter/material.dart';
import '../menus/blueline.dart';
import '../menus/ccd.dart';
import '../menus/florentine.dart';
import '../menus/foodies.dart';
import '../menus/spectrum_south.dart';

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
                title: Text('Spectrum South hub '),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Status: open/closed' ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => menu_1()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.coffee),
                title: Text('Foodie\'s World'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Status: open/closed' ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => menu_2()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.coffee),
                title: Text('Cafe Coffee Day'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Status: open/closed' ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => menu_3()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.coffee),
                title: Text('Blue Line Restaurant'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Status: open/closed' ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => menu_4()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.coffee),
                title: Text('Florentine'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Status: open/closed' ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => menu_5()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

