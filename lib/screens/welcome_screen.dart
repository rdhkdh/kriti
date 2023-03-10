import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/services.dart';
import 'package:kriti/screens/registration_screen.dart';
import 'login_sreen.dart';
// import 'package:remove_background/remove_background.dart';
import 'dart:typed_data';
import 'dart:ui' as ui;

class WelcomeScreen extends StatefulWidget {
  static String id='welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();

}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isLoaded = false;
  ui.Image? image;
  ByteData? pngBytes;

  @override

  getUiImage() async {
    ByteData data = await rootBundle.load('lib/assets/grocery-shopping.png');
    image = await decodeImageFromList(data.buffer.asUint8List());
    await getPNG();
    setState(() {
      isLoaded = true;
    });
  }

  getPNG() async {
    pngBytes = await image?.toByteData(format: ui.ImageByteFormat.png);
  }
  void initState() {
    super.initState();
    getUiImage();
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: Colors.amberAccent,
                  onPressed: () {},
                  child: Icon(
                    Icons.shopping_cart,
                    size: 40,
                    color: Colors.red,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [TyperAnimatedText('  MarketMate',textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold
                  ))],
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Container(
              child:
                isLoaded
                    ? Image.memory(Uint8List.view(pngBytes!.buffer))
                    : const Icon(Icons.image),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Shopping at campus is now easier than ever\n",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30.0),
                    ),
                    TextSpan(
                      text: "Enjoy hassle free shopping\n",
                      style: TextStyle(color: Colors.white,fontSize: 18.0),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
