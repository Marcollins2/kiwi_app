import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiwi_app/Screens/LoginScreen.dart';
import 'package:kiwi_app/Screens/RegistrationScreen.dart';
import 'package:kiwi_app/Screens/WelcomeScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
}
