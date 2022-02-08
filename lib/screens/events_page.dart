import 'package:events_app/widgets/appbar_back_button.dart';
import 'package:events_app/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:events_app/utils/colors.dart' as colors;

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  _EventsPageState createState() => _EventsPageState();
}

//TODO: Fix back navigation
///Back page navigation takes page to sig in instead of home page

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(
                    image: AssetImage('assets/background_image.png'),
                    width: double.infinity,
                    fit: BoxFit.fill),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("EVENT NAME",
                          style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold)),
                      IconButton(
                          onPressed: () {},
                          splashRadius: 30,
                          icon: const Icon(Icons.calendar_today_rounded,))
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                  child: Text("1st January 2022",
                      style: GoogleFonts.raleway(
                        color: Colors.white70,
                        fontSize: 18,
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                  child: Text("5:30 PM IST",
                      style: GoogleFonts.raleway(
                        color: Colors.white70,
                        fontSize: 18,
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Text("VOC Park Grounds",
                      style: GoogleFonts.raleway(
                        color: Colors.white70,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: GradientButton(
                    onPressed: () {},
                    title: 'RSVP to this event',
                    startingColor: const Color(0xff1D5AFF),
                    endingColor: const Color(0xff8F48FF),
                  ),
                ),
              ],
            ),
            const Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AppBarBackButton('Event Name (replace with name)')),
          ],
        ),
      ),
    );
  }
}
