import 'package:flutter/material.dart';
import 'package:style_palette_app/login.dart';
import 'package:style_palette_app/signup.dart';
import 'package:style_palette_app/welcome_page.dart';

void main() {
  runApp(the_style_palette());
}
class the_style_palette extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black12),
        ),
      ),
      initialRoute:'/',
      routes: {
        '/':(context) => WelcomeScreen(),
        '/login':(context) => LoginScreen(),
        '/signup':(context) => RegistrationScreen()
      },

    );
  }
}
