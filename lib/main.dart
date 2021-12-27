import 'package:events_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:events_app/utils/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: darkTheme.DarkTheme
  ));
}

