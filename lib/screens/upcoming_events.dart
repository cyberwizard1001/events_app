import 'dart:ui';

import 'package:events_app/screens/sign_up.dart';
import 'package:events_app/widgets/events_preview.dart';
import 'package:events_app/widgets/profile.dart';
import 'package:flutter/cupertino.dart';
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
drawer: NavDrawer(),
      appBar: AppBar(title: Center(
        child: Text("Upcoming Events", style:  GoogleFonts.sourceSansPro(
            color: colors.darkPrimaryTextColor,
            fontWeight: FontWeight.w700),

        ),
      ),
        backgroundColor: colors.darkScaffoldColor,



      ),
      backgroundColor: colors.darkScaffoldColor,
      body:Column(
        children: [
          Events_Preview( "Event 1", "assets/events.png", SignUpWidget()),
          Events_Preview( "Event 2", "assets/events.png", SignUpWidget()),
          Events_Preview( "Event 3", "assets/events.png", SignUpWidget()),
          Events_Preview( "Event 4", "assets/events.png", SignUpWidget()),

        ],
      )




    );
  }
}

