import 'package:auto_size_text/auto_size_text.dart';
import 'package:events_app/screens/sign_in.dart';
import 'package:events_app/screens/sign_up.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Material(
        color: colors.scaffoldColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                child: ClipOval(
                  child: Image(
                    image: AssetImage("assets/cultural.png"),
                  ),
                ),
              ),
              // decoration: BoxDecoration(),
                  // image: DecorationImage(
                  //     fit: BoxFit.cover,
                  //     image: AssetImage("assets/bg.jfjf"))),
              accountName: Text(
                "Sumithra",
                style: GoogleFonts.poppins(
                    color: colors.primaryTextColor, fontSize: 18),
              ),
              accountEmail: Text(
                "sumisooriya@gmail.com",
                style:
                GoogleFonts.poppins(color: colors.secondaryTextColor),
              ),
            ),
            buildMenuItem(
                text: 'Home',
                icon: Icons.home,
                onTap: () {
                  Navigator.of(context).pop();
                }),
            buildMenuItem(
                text: 'Profile',
                icon: Icons.person,
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => ProfilePage()));
                }),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 1,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            buildMenuItem(
              text: 'Sign Out',
              icon: Icons.logout,
              onTap: ()  {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        const SignUpWidget()));
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: ListTile(
        selectedTileColor: colors.accentColor,
        leading: Icon(
          icon,
          color: colors.primaryTextColor,
        ),
        title: Text(
          text,
          style: GoogleFonts.poppins(color: colors.primaryTextColor),
        ),
        onTap: onTap,
      ),
    );
  }
}