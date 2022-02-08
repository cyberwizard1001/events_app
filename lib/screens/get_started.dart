import 'package:events_app/screens/features.dart';
import 'package:events_app/screens/sign_in.dart';
import 'package:events_app/screens/sign_up.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:events_app/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Stack(
              children: [
                SvgPicture.asset(
                  'assets/svg/background.svg',
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(),
                        flex: 1,
                      ),
                      Expanded(
                          flex: 3,
                          child: SvgPicture.asset('assets/svg/title_image.svg')),
                      Expanded(
                        flex: 4,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                              child: Center(
                                  child: Text(
                                'Hi There!',
                                style: GoogleFonts.raleway(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                    color: colors.primaryTextColor),
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 50),
                              child: Center(
                                child: Text(
                                  'A small description of what the app is and what it does',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.raleway(
                                      color: colors.primaryTextColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            GradientButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const FeaturesPage()));
                              },
                              startingColor: const Color(0xff1D5AFF),
                              endingColor: const Color(0xff8F48FF),
                              title: 'GET STARTED',
                            ),
                            Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: colors.whiteColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(80.0)),
                                      padding: const EdgeInsets.all(0.0),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SignInWidget()));
                                    },
                                    child: Container(
                                        constraints: const BoxConstraints(
                                            maxWidth: 300.0,
                                            minHeight: 40,
                                            maxHeight: 50),
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'SIGN IN',
                                            style: GoogleFonts.poppins(
                                                fontSize: 16,
                                                color: colors.tertiaryTextColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        )))),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'New around here?',
                                  style: GoogleFonts.poppins(
                                      color:
                                          colors.primaryTextColor.withOpacity(0.7)),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SignUpWidget()));
                                    },
                                    child: Text(
                                      'Sign up',
                                      style: GoogleFonts.poppins(
                                          color: colors.tertiaryTextColor),
                                    ))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
