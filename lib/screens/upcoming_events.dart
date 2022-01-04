import 'package:flutter/material.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Upcoming extends StatefulWidget {
  const Upcoming({Key? key}) : super(key: key);

  @override
  _UpcomingState createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
        child: Text("Upcoming Events", style:  GoogleFonts.sourceSansPro(
            color: colors.darkPrimaryTextColor,
            fontWeight: FontWeight.w700),

        ),
      ),
        backgroundColor: colors.darkScaffoldColor,

      ),
      backgroundColor: colors.darkScaffoldColor,
      body: Stack(
        children: [

        ],
      ),

    );
  }
}
