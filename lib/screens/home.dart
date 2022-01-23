import 'package:events_app/widgets/Drawer_Profile.dart';
import 'package:flutter/material.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: colors.accentColor,backgroundColor: colors.accentColor,
        centerTitle: true,
        title: Text(
          "Home",
          style: GoogleFonts.montserrat(
              fontSize: 20, color: colors.primaryTextColor),
        ),

      ),
      drawer: Drawer_bar(),
    );
  }
}
