import 'package:flutter/material.dart';
import 'package:style_palette_app/Screens/HomeScreen.dart';
import 'package:style_palette_app/Screens/login.dart';
import 'package:style_palette_app/Screens/signup.dart';
import 'package:style_palette_app/Screens/welcomescreen.dart';
import 'package:style_palette_app/Screens/userscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Netverbatim'),
      home: FashionProfileScreen(),

// initialRoute:'HomeScreen',
      routes: {
        '/Welcomescreen': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => RegistrationScreen()
      },
    );
  }
}
