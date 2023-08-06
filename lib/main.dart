import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:style_palette_app/Screens/Login.dart';
import 'package:style_palette_app/Screens/SignUp.dart';
import 'package:style_palette_app/Screens/WelcomeScreen.dart';

import 'firebase_options.dart';

void main() {
  runApp(GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    initFirebase();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Netverbatim'),
      home: LoginScreen(),
      routes: {
        '/Welcomescreen': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => RegistrationScreen()
      },
    );
  }

  Future<void> initFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
