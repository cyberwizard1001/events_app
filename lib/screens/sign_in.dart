import 'package:events_app/screens/get_started.dart';
import 'package:events_app/screens/home.dart';
import 'package:events_app/widgets/appbar_back_button.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:events_app/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const AppBarBackButton('Sign in'),
      body: Stack(
        children: [
          SvgPicture.asset('assets/svg/content_background.svg'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                      Expanded(child: Container(),flex: 2,),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Sign in',
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
                                    label: const Text('Username'),
                                    filled: true,
                                    hintText: 'Please enter your username',
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
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => const Home()));
                              },
                              title: 'SIGN IN',
                              startingColor: const Color(0xff1D5AFF),
                              endingColor: const Color(0xff8F48FF),
                            ),
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
