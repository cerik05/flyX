import 'package:camera/camera.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniapp/models/bottom_bar.dart';
import 'package:uniapp/pages/camera.dart';
import 'package:uniapp/pages/goals.dart';
import 'package:uniapp/pages/home.dart';
import 'package:uniapp/pages/notes.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key, @required this.cameraDescription}) : super(key: key);
  final CameraDescription cameraDescription;
  @override
  _MainPageState createState() => _MainPageState();
}

enum BottomIcons { Home, Camera, Notes, Goals }

class _MainPageState extends State<MainPage> {
  BottomIcons bottomIcons = BottomIcons.Home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f2227),
      body: Stack(
        children: <Widget>[
          //Widget for camera
          bottomIcons == BottomIcons.Camera
              ? CameraScreen(
                  camera: widget.cameraDescription,
                  )
              : Container(),

          //Widget for home
          bottomIcons == BottomIcons.Home
              ? HomePage()
              :
              //Widget for notes
              bottomIcons == BottomIcons.Notes
                  ? NotesPage()
                  : Container(),
          bottomIcons == BottomIcons.Goals ? GoalsPage() : Container(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //Widget for camera
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Camera;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Camera ? true : false,
                      icons: EvaIcons.cameraOutline,
                      text: "Camera"),
                  //Widget for home
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Home;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Home ? true : false,
                      icons: EvaIcons.homeOutline,
                      text: "Home"),
                  //Widget for notes
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Notes;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Notes ? true : false,
                      icons: EvaIcons.fileOutline,
                      text: "Notes"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Goals;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Goals ? true : false,
                      icons: EvaIcons.heartOutline,
                      text: "Goals"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
