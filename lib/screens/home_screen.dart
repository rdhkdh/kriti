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
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: Center(child: const Text('Categories')),
        backgroundColor: Colors.teal[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => restaurants()),
              )
            },
            child: Card(
              color: Colors.teal[300],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    child: Image.asset(
                      'lib/assets/restaurants.jpeg',
                      width: 250,
                      height: 150,
                      fit:BoxFit.fill,
                    ),
                  ),
                  ListTile(
                    title: Center(child: Text('Restaurants',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => stationaries()),
              )
            },
            child: Card(
              color: Colors.teal[300],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    child: Image.asset(
                        'lib/assets/stationaries.jpeg',
                        width: 300,
                        height: 150,
                        fit:BoxFit.fill
                    ),
                  ),
                  ListTile(
                    title: Center(child: Text('Stationeries',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => essentials()),
              )
            },
            child: Card(
              color: Colors.teal[300],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    child: Image.asset(
                        'lib/assets/essentials.jpeg',
                        width: 300,
                        height: 150,
                        fit:BoxFit.fill
                    ),
                  ),
                  ListTile(
                    title: Center(child: Text(
                      'Other Essentials',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}





