
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:events_app/utils/colors.dart' as colors;

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all( 20),
        children: [
          Image.asset("asset/cultural.png"),
          Text( "Profile"),
          IconButton(onPressed: (){} , icon: Icon(Icons.settings))
        ],
      ),
    );
  }
}
