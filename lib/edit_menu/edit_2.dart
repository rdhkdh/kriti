import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/menu_list.dart';
import '../shopkeeper_side/new_menu.dart';

class MyCustomForm2 extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}
class _MyCustomFormState extends State<MyCustomForm2> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  String food = "";
  String price = "";
  Map<String, int> menu= MenuList.menu_list_2;
  void _submit() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => new_menu(item:food,price: price)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit menu"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'food item'),
                    onChanged: (value) {
                      food = value;
                    },
                  ),
                  // this is where the
                  // input goes
                  TextFormField(
                    decoration: InputDecoration(labelText: 'price of the item'),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly] ,
                    onChanged: (value) {
                      price = value;
                      menu[food]=int.parse(price);
                    },
                  ),
                  MaterialButton(
                    onPressed: _submit,
                    child: Text("submit"),
                    color: Colors.amberAccent,
                  ),
                ],
              ),
            ),
            // this is where
            // the form field
            // are defined
            SizedBox(
              height: 20,
            ),

          ],
        ),
      ),
    );
  }
}
