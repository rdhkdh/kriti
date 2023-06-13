import 'package:flutter/material.dart';
import '../utils/qr_code.dart';
import 'dart:math';

String generateRandomString(int lengthOfString) {
  final random = Random();
  const allChars =
      'AaBbCcDdlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1EeFfGgHhIiJjKkL234567890';
  // below statement will generate a random string of length using the characters
  // and length provided to it
  final randomString = List.generate(
          lengthOfString, (index) => allChars[random.nextInt(allChars.length)])
      .join();
  return randomString; // return the generated string
}

class QR extends StatelessWidget {
  QR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: PreviewPage(),
    );
  }
}

class PreviewPage extends StatelessWidget {
  PreviewPage({Key? key}) : super(key: key);
  String str = generateRandomString(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
        title: const Text('Order placed, thankyou!',
            style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.green, width: 4),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                new BoxShadow(color: Colors.black26, offset: new Offset(6.0, 6.0),),
              ],
            ),
            child: Text("Please take a screenshot of the QR code as it will not be generated again:",
                style: TextStyle(fontSize: 20)),
          ),
          SizedBox(
            height: 48.0,
          ),
          Center(
            child: QRCode(
              qrSize: 320,
              qrData: '${str}', //generate unique ID here
            ),
          ),
        ],
      ),
    );
  }
}
