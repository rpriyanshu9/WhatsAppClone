import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class cameraTab extends StatefulWidget {
  @override
  _cameraTabState createState() => _cameraTabState();
}

class _cameraTabState extends State<cameraTab> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 1,
          ),
          Expanded(
            child: Center(
              child: _image == null
                  ? Text("No Image Selected")
                  : Image.file(_image),
            ),
          ),
          RaisedButton(
            onPressed: () {
              getImage();
            },
            child: Text("Take Image"),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: (){
//          getImage();
//        },
//        tooltip: 'Pick Image',
//        child: Icon(Icons.camera_alt),
//      ),
    );
  }
}
