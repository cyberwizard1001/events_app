import 'dart:ui';

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
      appBar: AppBar(title: Center(
        child: Text("Upcoming Events", style:  GoogleFonts.sourceSansPro(
            color: colors.darkPrimaryTextColor,
            fontWeight: FontWeight.w700),

        ),
      ),
        backgroundColor: colors.darkScaffoldColor,
leading: IconButton(icon:Icon(Icons.line_weight_sharp), onPressed: (){},),


      ),
      backgroundColor: colors.darkScaffoldColor,
      body:    Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(

elevation: 10,
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(6)
),
            child:Stack(
              children: [
                Ink.image(

                  image: AssetImage("assets/events.png"),
                  child: InkWell(
                    onTap: (){},
                  ),
                  fit: BoxFit.cover,),
                Text(
                  "Categories",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.sourceSansPro(
                      color: colors.darkPrimaryTextColor,
                      fontWeight: FontWeight.w700),
                ),
              ],
            )
          )
        ],
      )


    );
  }
}

