import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiwi_app/Screens/LoginScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: LoginScreen(),
    );
  }
}
