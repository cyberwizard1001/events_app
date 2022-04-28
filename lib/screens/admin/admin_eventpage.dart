import 'package:auto_size_text/auto_size_text.dart';
import 'package:events_app/screens/admin/people_list.dart';
import 'package:events_app/widgets/appbar_back_button.dart';
import 'package:events_app/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:events_app/utils/constants.dart' as constants;

class AdminEventsPage extends StatefulWidget {
  const AdminEventsPage({Key? key}) : super(key: key);

  @override
  _AdminEventsPageState createState() => _AdminEventsPageState();
}

class _AdminEventsPageState extends State<AdminEventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: constants.gradientDecoration,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: AutoSizeText(
                                        "Event Name",
                                        maxLines: 1,
                                        style: GoogleFonts.nunito(
                                            color: colors.primaryTextColor,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Text(
                                      "VOC Park",
                                      style: GoogleFonts.nunito(
                                          color: colors.primaryTextColor,
                                          fontSize: 18.0),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    children: [
                                      Card(
                                        elevation: 5,
                                        color: colors.dateCardColor,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6.0, vertical: 10.0),
                                          child: AutoSizeText(
                                            "22/02/2022",
                                            maxLines: 1,
                                            style: GoogleFonts.nunito(
                                                color: colors.primaryTextColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 4.0),
                                        child: Text(
                                          'LAST DATE',
                                          style: GoogleFonts.nunito(
                                              color: colors.primaryTextColor,
                                              fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(19),
                              child: const Image(
                                  image: AssetImage('assets/background_image.png'),
                                  width: double.infinity,
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Event time: ",
                                    style: GoogleFonts.nunito(
                                        color: Colors.white70, fontSize: 20)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2),
                            child: Text("9:30 PM IST",
                                style: GoogleFonts.nunito(
                                  color: Colors.white,
                                  fontSize: 18,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Event type: ",
                                    style: GoogleFonts.nunito(
                                        color: Colors.white70, fontSize: 20)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2),
                            child: Text("Event Type",
                                style: GoogleFonts.nunito(
                                  color: Colors.white,
                                  fontSize: 18,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Description: ",
                                    style: GoogleFonts.nunito(
                                        color: Colors.white70, fontSize: 20)),
                              ],
                            ),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.nunito(
                              height: 1.6,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0,),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 40),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('RSVP to this event', style: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 17),),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),)
    );
  }
}
