import 'package:events_app/screens/home.dart';
import 'package:events_app/screens/side_bar.dart';
import 'package:events_app/widgets/appbar_back_button.dart';
import 'package:events_app/widgets/data_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:events_app/utils/colors.dart' as colors;

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBackButton('Categories'),
      body: Container(
        child: DataCard(
          'Spiritual',
          '',
          'assets/spiritual.png',
          CategoryScreen(),
          colors.darkAccentColor,
          colors.darkSecondAccentColor
        ),
      ),
    );
  }
}








