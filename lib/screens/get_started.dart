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
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: colors.gradientColors,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.0,0.5,1.0]
                    )
                  ),
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
                          child: Text('Replace with app logo'),),
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 60.0, bottom: 10.0),
                              child: Text(
                                "Here's a random line approximate length",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                    color: colors.primaryTextColor),
                              )),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 50, right: 60),
                              child: Text(
                                  'A small description of what the app is and what it does',
                                  style: GoogleFonts.nunito(
                                      color: colors.primaryTextColor,
                                      fontSize: 17,
                                  ),
                                ),
                              ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                const SignInWidget()));
                                      },
                                      child: Text(
                                        'Sign In',
                                        style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,

                                        ),
                                      ),
                                    ),
                                const SizedBox(width: 20,),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: colors.primaryTextColor),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const FeaturesPage()));
                                  },
                                  child: Text('Get Started', style: GoogleFonts.nunito(fontSize: 16, color: colors.scaffoldColor,fontWeight: FontWeight.bold,),),
                                ),
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
