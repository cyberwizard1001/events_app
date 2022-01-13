import 'package:auto_size_text/auto_size_text.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Dimensions {
  Dimensions(context) {
    boxHeight = MediaQuery.of(context).size.height / 100;
    boxWidth = MediaQuery.of(context).size.width / 100;
  }

  static double boxWidth = 0;
  static double boxHeight = 0;
}

class Div extends StatelessWidget {
  Div(this.title, this.imageUrl, this.route);

  final String imageUrl;
  final Widget route;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Card(
            color: Color(0xFF292D37),
            elevation: 20,
            child: InkWell(
              splashColor: colors.darkAccentColor,
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => route));
              },
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: ListTile(
                      leading: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.90,
                        child: FittedBox(
                          child: Image.asset(
                            imageUrl,
                          ),
                        ),
                      ),
                      title: FittedBox(
                        child: AutoSizeText(
                          title,
                          textAlign: TextAlign.right,
                          style: GoogleFonts.sourceSansPro(
                              color: colors.darkAccentColor,
                              fontSize: 40,
                              fontWeight: FontWeight.w400),
                          maxLines: 1,
                        ),
                      ),
                    ),
                  )),
            )),
      ),
    );
  }
}
