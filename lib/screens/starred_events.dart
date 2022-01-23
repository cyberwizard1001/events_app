import 'package:events_app/screens/get_started.dart';
import 'package:events_app/screens/home.dart';
import 'package:events_app/widgets/appbar_back_button.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class StarredWidget extends StatelessWidget {
  const StarredWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBarBackButton("Starred Events"),
      backgroundColor: colors.scaffoldColor,
      body: NoStar(),
    );
  }
}

Widget NoStar(){
  return Container(
    child: Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRect(
            child:  SvgPicture.asset('assets/svg/starred.svg'),

          ),

          Text("You can star your favorite events and get quick access to them from here!", textAlign: TextAlign.center,style: GoogleFonts.poppins(
              fontSize: 12,
              color: colors.primaryTextColor,
              fontWeight: FontWeight.w600),)
        ],
      ),
    ),
  );
}