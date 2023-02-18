import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; //flutter pub add url_launcher

class essentials extends StatelessWidget {
  const essentials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _launchWhatsapp(var whatsapp) async {
      //var whatsapp = "+91XXXXXXXXXX";
      var whatsappAndroid =Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
      if (await canLaunchUrl(whatsappAndroid)) {
        await launchUrl(whatsappAndroid);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("WhatsApp is not installed on the device"),
          ),
        );
      }
    }

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
              subtitle: Text( 'Timings: 11am-9pm' ),
              onTap: ()
              {
                _launchWhatsapp("+918770024956");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(Icons.local_grocery_store),
              title: Text('Market Complex Salon'),
              tileColor: Colors.purple[200],
              subtitle: Text( 'Timings: 12pm-7pm' ),
              onTap: ()
              {
                _launchWhatsapp("+918638677934");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(Icons.local_grocery_store),
              title: Text('Market Complex supermarket'),
              tileColor: Colors.purple[200],
              subtitle: Text( 'Timings: 12pm-7pm' ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(Icons.local_grocery_store),
              title: Text('Manas Laundry'),
              tileColor: Colors.purple[200],
              subtitle: Text( 'Timings: 11am-5pm' ),
              onTap: ()
              {
                _launchWhatsapp("+917663903580");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.local_grocery_store),
                title: Text('Khokha Cycle Repair'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Timings: 12pm-9pm' )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: const Icon(Icons.local_grocery_store),
                title: Text('Market Complex Tailor Shop'),
                tileColor: Colors.purple[200],
                subtitle: Text( 'Timings: 12pm-7pm' )
            ),
          ),
        ],
      ),
    );
  }
}
