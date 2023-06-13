import 'package:flutter/material.dart';
import '../utils/side_menu.dart';
import 'package:kriti/screens/essentials.dart';
import 'package:kriti/screens/restaurants.dart';
import 'package:kriti/screens/stationaries.dart';

void main() {
  runApp(MaterialApp(
    home: homepage(),
  ));
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _selectedIndex=0;
  PageController pgContr = PageController();
  void onTap_bottom_nav_bar(int index) {
      setState(() {
        _selectedIndex= index;
      });
      pgContr.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      drawer: side_menu(),
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
        title: const Text('Welcome, User!', style: TextStyle(color: Colors.black)),
      ),
      body: PageView(
        controller: pgContr,
        children: [
          restaurants(),
          stationaries(),
          essentials(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black12,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.fastfood), label: 'Restaurants'),
          BottomNavigationBarItem(icon: Icon(Icons.book_outlined), label: 'Stationeries'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Essentials'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white70,
        onTap: onTap_bottom_nav_bar,
      ),
    );
  }
}

