import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kiwi_app/AI/DetectionScreen.dart';
import 'package:kiwi_app/Helpers/Constants.dart';
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

  String _userHeightSize = '0.0 cm';
  String _userWaistSize = '0.0 cm';
  String _userShoulderSize = '0.0 cm';

  final box = GetStorage();

  List<String> _functionList = [
    'kwanjula',
    'cocktail',
    'wedding',
    'Prom',
    'Party'
  ];
  List<String> _styleList = ['culture', 'Islam', 'Dress'];
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
            Text(
                'Tap to Open Camera So We can Measure Your Body and Determine Your Skin tone for a better Fit.'),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 75,
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
                        height: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Height: $_userHeightSize",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "Waist: $_userWaistSize",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "Shoulder: $_userShoulderSize",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  height: 195,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image(
                    image: AssetImage('assets/images/skin_tone.jpg'),
                    width: 130,
                    height: 120,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
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
            // Text('Select Size:'),
            // DropdownButtonFormField<String>(
            //   value: _selectedSize,
            //   onChanged: (newValue) {
            //     setState(() {
            //       _selectedSize = newValue!;
            //     });
            //   },
            //   items: _sizeList.map((size) {
            //     return DropdownMenuItem<String>(
            //       value: size,
            //       child: Text(size),
            //     );
            //   }).toList(),
            // ),
            // SizedBox(height: 16),
            // Text('Select Color:'),
            // DropdownButtonFormField<String>(
            //   value: _selectedColor,
            //   onChanged: (newValue) {
            //     setState(() {
            //       _selectedColor = newValue!;
            //     });
            //   },
            //   items: _colorList.map((color) {
            //     return DropdownMenuItem<String>(
            //       value: color,
            //       child: Text(color),
            //     );
            //   }).toList(),
            // ),
            // SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.black,
                borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    openHomeScreen();
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

  openCameraUI() async {
    dynamic data = await Get.to(() => DetectionScreen(cameras));
    // Save the user measurements to the
    // local storage using the GetStorage package
    box.write(Constants.userHeightSize, data['height']);
    box.write(Constants.userShoulderSize, data['shoulder']);
    box.write(Constants.userWaistSize, data['waist']);
    box.write(Constants.userFunctionPref, _selectedFunction);
    box.write(Constants.userStylePref, _selectedStyle);
    setState(() {
      _userHeightSize = "${double.parse(data['height']).round()} cm";
      _userShoulderSize = "${double.parse(data['shoulder']).round()} cm";
      _userWaistSize = "${double.parse(data['waist']).round()} cm";
    });
  }

  Future<void> initData() async {
    try {
      cameras = await availableCameras();
    } on CameraException catch (e) {
      print('Error: $e.code\nError Message: $e.message');
    }
  }

  void openHomeScreen() {
    if (_userHeightSize == '0.0 cm' ||
        _userShoulderSize == '0.0 cm' ||
        _userWaistSize == '0.0 cm') {
      Get.snackbar(
        "Error",
        "Please scan your body first",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }
    Get.to(() => HomeScreen());
  }
}
