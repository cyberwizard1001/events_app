 import 'package:events_app/screens/category.dart';
 import 'package:events_app/screens/upcoming_events.dart';
 import 'package:flutter/material.dart';
 import 'package:events_app/utils/colors.dart' as colors;
 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int currentIndex=0;
  final screens=[
    CategoryScreen(),
    Upcoming()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        backgroundColor: colors.accentColor,
        selectedItemColor: colors.scaffoldColor.withOpacity( .80),
        unselectedItemColor: colors.scaffoldColor.withOpacity( .40),
        onTap: (index)=>setState(() {
          currentIndex=index;
        }),
        items: [
          BottomNavigationBarItem(icon:  Icon(Icons.category),label: 'Categories'),
          BottomNavigationBarItem(icon:  Icon(Icons.upcoming), label: 'Upcoming Events')
        ],

      ),
      body: screens[currentIndex],
    );
  }
}
