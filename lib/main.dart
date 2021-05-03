import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tflite_test/screens/home_page.dart';

List<CameraDescription> cameras;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(
      cameras,
    ),
  ));
}
