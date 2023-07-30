import 'package:flutter/material.dart';
import 'package:kiwi_eventsapp/Screens/HomeScreen.dart';
import 'package:kiwi_eventsapp/Screens/login.dart';
import 'package:kiwi_eventsapp/Screens/signup.dart';
import 'package:kiwi_eventsapp/Screens/welcomescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Netverbatim'),
      home: HomeScreen(),

// initialRoute:'HomeScreen',
      routes: {
        '/Welcomescreen': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => RegistrationScreen()
      },
    );
  }
}
