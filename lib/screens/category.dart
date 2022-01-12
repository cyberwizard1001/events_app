import 'package:events_app/screens/home.dart';
import 'package:events_app/screens/side_bar.dart';
import 'package:events_app/screens/sign_up.dart';
import 'package:events_app/screens/spare.dart';
import 'package:events_app/screens/upcoming_events.dart';
import 'package:events_app/widgets/Categories.dart';
import 'package:events_app/widgets/appbar_back_button.dart';
import 'package:events_app/widgets/data_card.dart';
import 'package:events_app/widgets/events_preview.dart';
import 'package:events_app/widgets/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:events_app/widgets/Categories.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.darkScaffoldColor,
      appBar:  AppBar(title: Center(
        child: Text("Categories", style:  GoogleFonts.sourceSansPro(
            color: colors.darkPrimaryTextColor,
            fontWeight: FontWeight.w700),

        ),
      ),
        backgroundColor: colors.darkScaffoldColor,



      ),
      drawer: Profile(),

      body:   Container(
        child: Column(
          children: [
            Div( "Spirtual", "assets/spiritual.png", SignUpWidget()),
            Div("Technical", "assets/technical.png",SignUpWidget()),
            Div("Cultural","assets/cultural.png", SignUpWidget()),





          ],
        ),


      ),
    );
  }
}








