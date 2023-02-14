import 'package:flutter/material.dart';

class stationaries extends StatelessWidget {
  const stationaries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Stationaries')),
        backgroundColor: Colors.lightBlueAccent[100],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.adf_scanner),
                title: Text('Lecture Hall Stationary'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Status: open/closed' )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.adf_scanner),
                title: Text('Core 1 Stationary'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Status: open/closed' )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.adf_scanner),
                title: Text('Disang Stationary'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Status: open/closed' )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.adf_scanner),
                title: Text('Lohit Stationary'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Status: open/closed' )
            ),
          ),
        ],
      ),
    );
  }
}
