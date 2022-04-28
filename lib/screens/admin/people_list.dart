import 'package:events_app/widgets/appbar_back_button.dart';
import 'package:events_app/widgets/listview.dart';
import 'package:flutter/material.dart';
import 'package:events_app/utils/colors.dart' as colors;

class PeopleListPage extends StatefulWidget {
  const PeopleListPage({Key? key}) : super(key: key);

  @override
  _PeopleListPageState createState() => _PeopleListPageState();
}

class _PeopleListPageState extends State<PeopleListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarBackButton('Attendees'),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                colors.gradientBeginColor,
                colors.gradientMiddleColor,
                colors.gradientEndColor
              ],
            ),
          ),
          child: const ListViewWidget(),
        )
    );;
  }
}
