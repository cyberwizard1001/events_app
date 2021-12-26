import 'package:events_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      //heme: darkTheme.DarkTheme
  ));
}

