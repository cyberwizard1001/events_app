import 'package:events_app/utils/colors.dart' as colors;
import 'package:events_app/widgets/appbar_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:events_app/utils/constants.dart' as constants;

class StarredWidget extends StatelessWidget {
  const StarredWidget({Key? key}) : super(key: key);

  //TODO: Return starred events in al listview
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarBackButton("Starred Events"),
      body: Container(
       decoration: constants.gradientDecoration,
           child: NoStar(),
      )
    );
  }
}

Widget NoStar() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 1,child: Container()),
          Expanded(flex: 3,child: SvgPicture.asset('assets/svg/starred.svg',fit: BoxFit.fitWidth,width: 330,)),
          Expanded(flex: 2,child: Text(
            "You can star your favorite events and get quick access to them from here!",
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
                fontSize: 18,
                color: colors.primaryTextColor,
                fontWeight: FontWeight.normal),
          ),)
        ],
      ),
    ),
  );
}
