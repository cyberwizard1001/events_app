
import 'package:events_app/screens/profile_page.dart';
import 'package:events_app/screens/sign_in.dart';
import 'package:events_app/screens/starred_events.dart';
import 'package:flutter/material.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: colors.scaffoldColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
             Container(
               decoration: BoxDecoration(
                   gradient: LinearGradient(
                     begin: Alignment.topRight,
                     end: Alignment.bottomLeft,
                     colors: [
                       colors.accentColor,
                       colors.secondAccentColor
                     ],
                   )
               ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: CircleAvatar(
                    radius: 70,
                    child: ClipOval(
                      child:  SvgPicture.asset('assets/svg/female.svg'),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Sumithra Sudhakar',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: colors.primaryTextColor,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:  Directionality(
                textDirection: TextDirection.rtl,

                child: ElevatedButton.icon(
                  icon: const Icon(
                    Icons.person_rounded,
                    size: 13,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const ProfilePage()));
                  },
                  label: Padding(
                    padding:  const EdgeInsets.fromLTRB( 8, 8, 100, 8),
                    child: Text(
    'PROFILE',
    style: GoogleFonts.poppins(
    fontSize: 15,
    color: colors.secondaryTextColor,
    fontWeight: FontWeight.w600),
    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: const EdgeInsets.all(0.0),
                    primary: colors.accentColor
                  ),
                ),
              ),
            ),

            //second button
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:  Directionality(
                textDirection: TextDirection.rtl,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const StarredWidget()));
                  },
                  icon: const Icon(
                    Icons.star,
                    size: 13,
                  ),
                  label: Padding(
                    padding:   const EdgeInsets.fromLTRB( 8, 8, 30, 8),
                    child: Text(
                      'STARRED EVENTS',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: colors.secondaryTextColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: const EdgeInsets.all(0.0),
                    primary: colors.accentColor

                  ),
                ),
              ),
            ),

//third button
            Padding(
              padding: const EdgeInsets.fromLTRB( 8, 200, 8, 8),
              child:  Directionality(
                textDirection: TextDirection.rtl,
                child: ElevatedButton.icon(
                  icon:  const Icon(
                    Icons.logout,
                    size: 13,

                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const SignInWidget()));
                  },

                  label:  Padding(
                    padding: const EdgeInsets.fromLTRB( 8, 8, 80, 8),
                    child: Text(
                      'LOG OUT',
                      style: GoogleFonts.poppins(

                          fontSize: 15,
                          color: colors.secondaryTextColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: const EdgeInsets.all(0.0),
                    primary: colors.accentColor
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
