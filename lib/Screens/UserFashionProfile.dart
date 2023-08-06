import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:style_palette_app/Screens/HomeScreen.dart';

class UserFashionProfileScreen extends StatefulWidget {
  @override
  _UserFashionProfileScreenState createState() =>
      _UserFashionProfileScreenState();
}

class _UserFashionProfileScreenState extends State<UserFashionProfileScreen> {
  String _selectedFunction = 'kwanjula';
  String _selectedStyle = 'culture';
  String _selectedSize = 'Medium';
  String _selectedColor = 'Black';

  List<String> _functionList = [
    'kwanjula',
    'cocktail',
    'wedding',
    'Prom',
    'Party'
  ];
  List<String> _styleList = ['culture', 'Islam', 'simple', 'Dress'];
  List<String> _sizeList = ['Small', 'Medium', 'Large', 'Extra Large'];
  List<String> _colorList = [
    'Black',
    'White',
    'Blue',
    'Red',
    'orange',
    'Yellow',
    'maroon'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Build Your Fashion Profile'),
        backgroundColor: Colors.black,
        elevation: 0,
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Select Function:'),
            DropdownButtonFormField<String>(
              value: _selectedFunction,
              onChanged: (newValue) {
                setState(() {
                  _selectedFunction = newValue!;
                });
              },
              items: _functionList.map((function) {
                return DropdownMenuItem<String>(
                  value: function,
                  child: Text(function),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            Text('Select Style:'),
            DropdownButtonFormField<String>(
              value: _selectedStyle,
              onChanged: (newValue) {
                setState(() {
                  _selectedStyle = newValue!;
                });
              },
              items: _styleList.map((style) {
                return DropdownMenuItem<String>(
                  value: style,
                  child: Text(style),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            Text('Select Size:'),
            DropdownButtonFormField<String>(
              value: _selectedSize,
              onChanged: (newValue) {
                setState(() {
                  _selectedSize = newValue!;
                });
              },
              items: _sizeList.map((size) {
                return DropdownMenuItem<String>(
                  value: size,
                  child: Text(size),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            Text('Select Color:'),
            DropdownButtonFormField<String>(
              value: _selectedColor,
              onChanged: (newValue) {
                setState(() {
                  _selectedColor = newValue!;
                });
              },
              items: _colorList.map((color) {
                return DropdownMenuItem<String>(
                  value: color,
                  child: Text(color),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.black,
                borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Get.to(() => HomeScreen());
                  },
                  minWidth: MediaQuery.of(context).size.width,
                  height: 60.0,
                  child: const Text(
                    'Show me some clothes 🤩',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
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