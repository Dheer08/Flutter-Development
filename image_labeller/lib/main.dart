import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:tflite/tflite.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main()  => runApp(MaterialApp(
  home: Detect(),
  debugShowCheckedModeBanner: false,
));

class Detect extends StatefulWidget {
  @override
  _DetectState createState() => _DetectState();
}

class _DetectState extends State<Detect> {

  File _image;
  double _imageWidth;
  double _imageHeight;
  var _recognitions;
  loadModel() async{
    Tflite.close();
    try{
      String res;
      res = await Tflite.loadModel(
        model: "assets/mobilenet.tflite",
        labels: "assets/labels.txt",
      );
      print(res);
    } on PlatformException {
      print("failed to load model");
    }
  }
// run predictions using Tflite on given image
  Future predict(File image) async{
    var recognitions = await Tflite.runModelOnImage(
        path: image.path,
        imageMean: 0.0,
        imageStd: 255.0,
        numResults: 2,
        threshold: 0.2,
        asynch: true
    );
    print(recognitions);

    setState(() {
      _recognitions = recognitions;
    });
  }
  sendImage(File image) async{
    if(image == null) return;
    await predict(image);

    FileImage(image).resolve(ImageConfiguration()).addListener(
        (ImageStreamListener((ImageInfo info,bool _){
          setState(() {
            _imageWidth = info.image.width.toDouble();
            _imageHeight = info.image.height.toDouble();
            _image = image;
          });
        }))
    );
  }
  selectFromGallery() async{
    var image = await.ImagePicker.pickImage(source:ImageSource.gallery);
    if(image == null) return;
    setState(() {

    });
    sendImage(image);
  }

  @override
  void initState(){
    super.initState();

    loadModel().then((val){
      setState(() {

      });
    })
  }
  Widget build(BuildContext context) {
    return Container();
  }
}


