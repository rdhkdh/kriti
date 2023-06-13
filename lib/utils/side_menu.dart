import 'package:flutter/material.dart';

class side_menu extends StatelessWidget {
  const side_menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              color: Colors.lightBlueAccent[100],
              image: DecorationImage(
                image: NetworkImage('https://images.unsplash.com/photo-1506260408121-e353d10b87c7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGlsbHN8ZW58MHx8MHx8&w=1000&q=80',
                ),
                fit: BoxFit.cover,
              ),
            ),
          )
          
        ],
      ),
    );
  }
}
