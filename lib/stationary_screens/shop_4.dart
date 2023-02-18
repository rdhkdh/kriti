import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; //flutter pub add url_launcher

void main()
{
  runApp(MaterialApp(home: lohit_stationery(),));
}

_launchURL() async {
  const url = "whatsapp://send?text=Attached document to be printed";
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

class lohit_stationery extends StatelessWidget {
  const lohit_stationery({Key? key}) : super(key: key);
  static String id='shop_4';
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
        title: Center(child: const Text('Lohit Stationery')),
        backgroundColor: Colors.lightBlueAccent[200],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: Colors.lightBlueAccent[100],
              title: Text('Classmate Notebook 180 pages'),
              subtitle: Text('Rs 150'),
              leading: Icon(Icons.account_balance_wallet),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: Colors.lightBlueAccent[100],
              title: Text('Apsara  (10N)'),
              subtitle: Text('Rs 60'),
              leading: Icon(Icons.account_balance_wallet),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: Colors.lightBlueAccent[100],
              title: Text('Fevicol 150mL'),
              subtitle: Text('Rs 75'),
              leading: Icon(Icons.account_balance_wallet),
            ),
          ),
          ButtonTheme(
            minWidth: 200.0,
            height: 100.0,
            child: ElevatedButton(
              onPressed: () {_launchWhatsapp("+919957888156");},
              child: Text('Send Document'),
            ),
          ),
        ],
      ),
    );
  }
}
