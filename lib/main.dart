import 'package:events_app/screens/get_started.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:events_app/utils/themes.dart';
import 'package:firebase_auth/firebase_auth.dart';

//TODO: Add ScrollViews to sign_in and sign_up pages and
//TODO: Change SVG colors to white
//TODO: Add more white space to the home page
//


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  //Firebase Auth Phone:
 await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key})
      : super(key: key);

  @override
  State<MainApp> createState() => _FormKeepAliveState();
}

class _FormKeepAliveState extends State<MainApp>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MaterialApp(
        home: const GetStarted(),
        debugShowCheckedModeBanner: false,
        theme: darkTheme.DarkTheme
    );
  }

  @override
  bool get wantKeepAlive => true;
}



