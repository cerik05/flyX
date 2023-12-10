import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'dart:io';
import 'dart:ui';
import 'dart:async';

class DetailScreen extends StatefulWidget {
  final String imagePath;
  DetailScreen(this.imagePath);

  @override
  _DetailScreenState createState() => new _DetailScreenState(imagePath);
}

class _DetailScreenState extends State<DetailScreen> {
  _DetailScreenState(this.path);

  final String path;
  String subtotal = "";
  String tva = "";
  String total = "";
  String tiot;

  Size _imageSize;
  String recognizedText = "Loading ...";
  List<TextElement> _elements = [];

  Future<void> _initializeVisionWrapper() async {
    print("init");
    await Firebase.initializeApp().then((_) async {
      print("success");
      await _initializeVision();
      print("success2");
    });
  }

  void _initializeVision() async {
    final File imageFile = File(path);

    if (imageFile != null) {
      await _getImageSize(imageFile);
    }
    final FirebaseVisionImage visionImage =
        FirebaseVisionImage.fromFile(imageFile);

    final TextRecognizer textRecognizer =
        FirebaseVision.instance.textRecognizer();
    final VisionText visionText =
        await textRecognizer.processImage(visionImage);
    

    String flag = "";

    for (TextBlock block in visionText.blocks) {
      for (TextLine line in block.lines) {
        String data = line.text.toLowerCase().replaceAll(" ", "");
        switch (flag) {
          case "total":
            try {
              double.parse(data);
              total = data;
              flag = "";
            } catch (e) {
            }
            break;
          case "subtotal":
            subtotal = data;
            flag = "";
            break;
          case "tva":
            tva = data;
            flag = "";
            break;
        }
        switch (data) {
          case "total":
          case "1otal":
            flag = "total";
            break;
          default:
        }
        print(data);
      }
    }
    if (this.mounted) {
      setState(() {
      });
    }
  }

  Future<void> _getImageSize(File imageFile) async {
      final Completer<Size> completer = Completer<Size>();

      // Fetching image from path
      final Image image = Image.file(imageFile);

      // Retrieving its size
      image.image.resolve(const ImageConfiguration()).addListener(
        ImageStreamListener((ImageInfo info, bool _) {
          completer.complete(Size(
            info.image.width.toDouble(),
            info.image.height.toDouble(),
          ));
        }),
      );

      final Size imageSize = await completer.future;
      setState(() {
        _imageSize = imageSize;
      });
  }

  @override
  void initState() {
    super.initState();
    _initializeVisionWrapper();
    
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Details"),
        backgroundColor: const Color(0xff1f2227),
      ),
      body: _imageSize != null
          ? Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    width: double.maxFinite,
                    color: Colors.black,
                    child: CustomPaint(
                      foregroundPainter:
                          TextDetectorPainter(_imageSize, _elements),
                      child: AspectRatio(
                        aspectRatio: _imageSize.aspectRatio,
                        child: Image.file(
                          File(path),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Card(
                    elevation: 8,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "Identified total",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            child: SingleChildScrollView(
                              child:Column(children: [
                                Text(total == "" ? "could not read": "Total: $total"),
                              ],)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          : Container(
              color: Colors.black,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
    );
  }
}

class TextDetectorPainter extends CustomPainter {
  TextDetectorPainter(this.absoluteImageSize, this.elements);

  final Size absoluteImageSize;
  final List<TextElement> elements;

  @override
  void paint(Canvas canvas, Size size) {
    final double scaleX = size.width / absoluteImageSize.width;
    final double scaleY = size.height / absoluteImageSize.height;
    Rect scaleRect(TextContainer container) {
      return Rect.fromLTRB(
        container.boundingBox.left * scaleX,
        container.boundingBox.top * scaleY,
        container.boundingBox.right * scaleX,
        container.boundingBox.bottom * scaleY,
      );
    }
  }

  @override
  bool shouldRepaint(TextDetectorPainter oldDelegate) {
    return true;
  }
}
