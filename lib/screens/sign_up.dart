import 'package:events_app/screens/events_page.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:events_app/widgets/appbar_back_button.dart';
import 'package:events_app/widgets/gradient_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svg/opening_background.svg'),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  child: Center(
                    child: Column(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                          flex: 2,
                          child: SvgPicture.asset('assets/svg/login_image.svg'),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 40),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Sign up',
                                    style: GoogleFonts.poppins(
                                      color: colors.primaryTextColor,
                                      fontSize: 35,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 40, right: 40, top: 15, bottom: 10),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                  label: Text('NAME',
                                      style: GoogleFonts.raleway(
                                          color: colors.textBoxTextColor,
                                          fontSize: 12)),
                                  filled: true,
                                  hintText: 'Please enter your name',
                                  hintStyle: GoogleFonts.poppins(
                                      color: colors.primaryTextColor
                                          .withOpacity(0.7)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(5)),
                                  fillColor: colors.textBoxFill,
                                  focusColor: colors.textBoxFill,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(5)),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 10),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                  label: Text(
                                    'PHONE NUMBER',
                                    style: GoogleFonts.raleway(
                                        color: colors.textBoxTextColor,
                                        fontSize: 12),
                                  ),
                                  filled: true,
                                  hintText: 'Please enter your phone number',
                                  hintStyle: GoogleFonts.poppins(
                                      color: colors.primaryTextColor
                                          .withOpacity(0.7)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(5)),
                                  fillColor: colors.textBoxFill,
                                  focusColor: colors.textBoxFill,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(5)),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50.0),
                                child: GradientButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EventsPage()));
                                  },
                                  title: 'SIGN UP',
                                  startingColor: const Color(0xff1D5AFF),
                                  endingColor: const Color(0xff8F48FF),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ))
      ],
    );
  }
}
