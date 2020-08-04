import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'whatsapp_home.dart';
import 'dart:async';

List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "WhatsApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xff075E54), accentColor: Color(0xFF128C7E)),
      home: WhatsAppHome(cameras),
    );
  }
}
