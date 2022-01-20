import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:events_app/utils/colors.dart' as colors;

class AppBarBackButton extends StatelessWidget implements PreferredSizeWidget {
  const AppBarBackButton(this.title, {this.actions});

  final String title;
  final List<Widget>? actions;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  /**
   * Widget for app bars with a back button
   *
   * @param:
   * String title: title to be displayed in app bar
   *
   * @returns:
   * Widget: Returns an AppBar
   */

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          splashRadius: 20,
          icon: Icon(
            Icons.arrow_back,
            color: colors.accentColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
      actions: actions ?? [],
      centerTitle: true,
      title: Text(
        title,
        style: GoogleFonts.montserrat(
            fontSize: 20, color: colors.primaryTextColor),
      ),
    );
  }
}
