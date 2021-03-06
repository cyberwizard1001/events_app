import 'package:events_app/screens/admin/admin_home.dart';
import 'package:events_app/screens/get_started.dart';
import 'package:events_app/screens/home.dart';
import 'package:events_app/screens/profile_page.dart';
import 'package:events_app/screens/starred_events.dart';
import 'package:events_app/screens/admin/user_management.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: colors.inactiveCardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  radius: 50,
                  child: ClipOval(
                      child: SvgPicture.asset('assets/svg/female.svg')),
                ),
                decoration: BoxDecoration(color: colors.gradientEndColor),
                accountName: Text(
                  'Sumithra Sudhakar',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: colors.primaryTextColor,
                      fontWeight: FontWeight.w600),
                ),
                accountEmail: Text(
                  "sumisooriya@gmail.com",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: colors.primaryTextColor,
                  ),
                )),
            buildDrawerItem(
                text: 'Home',
                icon: Icons.home,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Home()));}),
            buildDrawerItem(
                icon: Icons.person_outline_rounded,
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
            buildDrawerItem(
                text: 'Admin console',
                icon: Icons.admin_panel_settings_outlined,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AdminHome()));}),
                  buildDrawerItem(
                      text: 'User management',
                      icon: Icons.person,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const UserManagementPage()));
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
                          builder: (context) => const GetStarted()),
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
          color: colors.whiteColor,
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
