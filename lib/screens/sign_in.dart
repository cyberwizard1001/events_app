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
    return Stack(
      children: [
        SvgPicture.asset('assets/svg/opening_background.svg'),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: CustomScrollView(slivers: [
              SliverFillRemaining(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(),
                        flex: 1,
                      ),
                      Expanded(
                        child: SvgPicture.asset('assets/svg/login_image.svg'),
                        flex: 2,
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Sign in',
                                  style: GoogleFonts.raleway(
                                    color: colors.primaryTextColor,
                                    fontSize: 35,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, right: 30, bottom: 30, top: 30),
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
                            GradientButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Home()));
                              },
                              title: 'SIGN IN',
                              startingColor: const Color(0xff1D5AFF),
                              endingColor: const Color(0xff8F48FF),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(),
                        flex: 1,
                      )
                    ],
                  ),
                ),
              ),
            ])),
      ],
    );
  }
}
