import 'package:events_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:events_app/utils/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

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
        home: const Home(),
        debugShowCheckedModeBanner: false,
        theme: darkTheme.DarkTheme
    );
  }

  @override
  bool get wantKeepAlive => true;
}



