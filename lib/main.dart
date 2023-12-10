import 'dart:async';

import 'package:camera/camera.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_ml_vision/firebase_ml_vision.dart';

import 'modules/main_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();
  

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;
  runApp(
    MaterialApp(
      //brightness: Brightness.dark,
      theme: ThemeData(
        fontFamily: 'LeonSans',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: TakePictureScreen(
      //   // Pass the appropriate camera to the TakePictureScreen widget.
      //   camera: firstCamera, //cameras[] -- request camera (0, 1, 2) (comment on firstCamera)
      // ),
      home: MainPage(
        cameraDescription: firstCamera,
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
