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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [colors.accentColor, colors.secondAccentColor],
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        radius: 70,
                        child: ClipOval(
                          child: SvgPicture.asset('assets/svg/female.svg'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Sumithra Sudhakar',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: colors.primaryTextColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            buildDrawerItem(
                icon: Icons.person_rounded,
                text: "Profile",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()));
                }),
            buildDrawerItem(
                icon: Icons.star,
                text: "Starred Events",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StarredWidget()));
                }),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 1,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: colors.accentColor),
                  ),
                ),
              ),
            ),
            buildDrawerItem(
                icon: Icons.logout,
                text: "Log Out",
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const SignInWidget()),
                      (Route<dynamic> route) => false);
                }),
          ],
        ),
      ),
    );
  }
}

Widget buildDrawerItem({
  required String text,
  required IconData icon,
  VoidCallback? onTap,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Icon(
          icon,
          color: colors.accentColor,
        ),
      ),
      title: Text(
        text,
        style: GoogleFonts.poppins(color: colors.primaryTextColor),
      ),
      onTap: onTap ?? () {},
    ),
  );
}
