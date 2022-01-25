import 'package:events_app/widgets/appbar_back_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:events_app/utils/colors.dart' as colors;


class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarBackButton('Event Name (replace with name)'),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Image(image: AssetImage('assets/background_image.png'),),
          ],
        ),
      ),
    );
  }
}
