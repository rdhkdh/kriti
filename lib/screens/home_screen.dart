import 'package:flutter/material.dart';
import 'package:kriti/screens/essentials.dart';
import 'package:kriti/screens/restaurants.dart';
import 'package:kriti/screens/stationaries.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String id='home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Categories')),
        backgroundColor: Colors.lightBlueAccent[100],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => restaurants()),
                  );
                },
                child: Text('Restaurants')
            ),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => stationaries()),
                  );
                },
                child: Text('Stationeries')
            ),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => essentials()),
                  );
                },
                child: Text('Other Essentials')
            ),
          ),
        ],
      ),
    );
  }
}






