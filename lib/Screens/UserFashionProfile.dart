import 'dart:math';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiwi_app/AI/home.dart';
import 'package:kiwi_app/Screens/HomeScreen.dart';

class UserFashionProfileScreen extends StatefulWidget {
  @override
  _UserFashionProfileScreenState createState() =>
      _UserFashionProfileScreenState();
}

class _UserFashionProfileScreenState extends State<UserFashionProfileScreen> {
  late List<CameraDescription> cameras;

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
  void initState() {
    // TODO: implement initState
    super.initState();
    initData();
  }

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
            Text(
              'Use AI to find your perfect outfit',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text('Tap to Open Camera'),
            SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(16),
              ),
              child: IconButton(
                onPressed: () => {
                  openCameraUI(),
                },
                icon: Icon(
                  Icons.camera_alt_outlined,
                  size: 64,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
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

  openCameraUI() {
    Get.to(() => HomePage(cameras));
    print("Open Camera UI");
  }

  Future<void> initData() async {
    try {
      cameras = await availableCameras();
    } on CameraException catch (e) {
      print('Error: $e.code\nError Message: $e.message');
    }
  }
}
