import 'package:flutter/material.dart';
import '../assets/qr_code.dart';
import 'dart:math';

String generateRandomString(int lengthOfString){
  final random = Random();
  const allChars='AaBbCcDdlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1EeFfGgHhIiJjKkL234567890';
  // below statement will generate a random string of length using the characters
  // and length provided to it
  final randomString = List.generate(lengthOfString,
          (index) => allChars[random.nextInt(allChars.length)]).join();
  return randomString;    // return the generated string
}

class QR extends StatelessWidget {
  QR({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Order placed, thankyou!',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PreviewPage(),
    );
  }
}

class PreviewPage extends StatelessWidget {
  PreviewPage({Key? key}) : super(key: key);
  String str=generateRandomString(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order placed, thankyou!'),
      ),
      body: Center(
        child: QRCode(
          qrSize: 320,
          qrData: '${str}', //generate unique ID here
        ),
      ),
    );
  }
}