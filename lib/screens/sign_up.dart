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
    return Scaffold(
      appBar: const AppBarBackButton('Sign up'),
      body: Stack(
        children: [
          SvgPicture.asset('assets/svg/content_background.svg'),
              Column(
                    children: [
                      Expanded(flex: 2,child: Container()),
                      Expanded(
                        flex: 4,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Sign up',
                                  style: GoogleFonts.poppins(
                                      color: colors.primaryTextColor,
                                      fontSize: 35,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                              child: TextFormField(
                                  decoration: InputDecoration(
                                    label: const Text('Name'),
                                    filled: true,
                                    hintText: 'Please enter your name',
                                    hintStyle: GoogleFonts.poppins(
                                        color: colors.primaryTextColor.withOpacity(0.7)),
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
                              padding:
                              const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                              child: TextFormField(
                                  decoration: InputDecoration(
                                    label: const Text('Phone number'),
                                    filled: true,
                                    hintText: 'Please enter your phone number',
                                    hintStyle: GoogleFonts.poppins(
                                        color: colors.primaryTextColor.withOpacity(0.7)),
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
                              padding:
                              const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  label: const Text('Password'),
                                  filled: true,
                                  hintText: 'Please enter your password',
                                  hintStyle: GoogleFonts.poppins(
                                      color:
                                      colors.primaryTextColor.withOpacity(0.7)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(5)),
                                  fillColor: colors.textBoxFill,
                                  focusColor: colors.textBoxFill,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            ),
                            GradientButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>EventsPage()));
                                },
                                title: 'SIGN UP',
                                startingColor: const Color(0xff1D5AFF),
                                endingColor: const Color(0xff8F48FF),
                            )
                          ],
                        ),
                      )
                    ],
                  )
            ],
          )
    );
  }
}
