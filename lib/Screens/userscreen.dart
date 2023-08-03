import 'package:flutter/material.dart';

class FashionProfileScreen extends StatefulWidget {
  @override
  _FashionProfileScreenState createState() => _FashionProfileScreenState();
}

class _FashionProfileScreenState extends State<FashionProfileScreen> {
  String _selectedFunction = 'kwanjula'; 
  String _selectedStyle = 'culture'; 
  String _selectedSize = 'Medium'; 
  String _selectedColor = 'Black'; 

  
  List<String> _functionList = ['kwanjula', 'cocktail', 'wedding', 'Prom','Party'];
  List<String> _styleList = ['culture', 'Islam', 'simple', 'Dress'];
  List<String> _sizeList = ['Small', 'Medium', 'Large', 'Extra Large'];
  List<String> _colorList = ['Black', 'White', 'Blue', 'Red','orange','Yellow', 'maroon'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fashion Profile'),
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
          ],
        ),
      ),
    );
  }
}

