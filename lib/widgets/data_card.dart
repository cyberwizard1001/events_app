import 'package:auto_size_text/auto_size_text.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DataCard extends StatelessWidget {
  DataCard(this.heading,  this.imageUrl, this.route,
      this.startingColor, this.endingColor);

  final String heading;

  final String imageUrl;
  final Widget route;
  final Color startingColor;
  final Color endingColor;

  @override
  Widget build(BuildContext context) {
    return (Expanded(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [startingColor, endingColor],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0xBC000000),
                blurRadius: 5.0,
              ),
            ],
          ),
          child: Material(
            borderRadius: BorderRadius.circular(20),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => route));
              },
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: SvgPicture.asset(imageUrl),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          AutoSizeText(heading,
                              maxLines: 3,
                              style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  color: colors.darkPrimaryTextColor)),

                        ],
                      ),
                    ),
                    flex: 6,
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                      child: Icon(Icons.chevron_right,
                          color: colors.darkPrimaryTextColor),
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ),
            color: Colors.transparent,
          ),
        ),
      ),
    ));
  }
}
