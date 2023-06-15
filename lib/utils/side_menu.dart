import 'package:flutter/material.dart';

class side_menu extends StatelessWidget {
  const side_menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.amber[200],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('Sample User'), 
              accountEmail: Text('example@email.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network('https://i.pinimg.com/736x/ba/92/7f/ba927ff34cd961ce2c184d47e8ead9f6.jpg',
                width: 90, height: 90, fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.lightGreenAccent,
              image: DecorationImage(
                image: NetworkImage('https://images.unsplash.com/photo-1506260408121-e353d10b87c7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGlsbHN8ZW58MHx8MHx8&w=1000&q=80',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.location_on_outlined),
            title: Text('Find restaurants'), //google maps
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text('Recommendations'), // put palates recommendations
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.newspaper_outlined),
            title: Text('What\'s more'), // blogs about iitg here
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.code),
            title: Text('About the developer'), // give link to github here
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
