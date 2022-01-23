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
      body: Stack(
        children: [
          SvgPicture.asset('assets/svg/background.svg'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Center(
                  child: Text(
                'Hi There!',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                    color: colors.primaryTextColor),
              )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              GradientButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FeaturesPage()));
                },
                title: 'GET STARTED',
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: GradientButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInWidget()));
                      },
                      title: 'LOGIN',
                      )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'New around here?',
                    style: GoogleFonts.poppins(
                        color: colors.primaryTextColor.withOpacity(0.7)),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpWidget()));
                      },
                      child: Text(
                        'Sign up',
                        style: GoogleFonts.poppins(
                            color: colors.tertiaryTextColor),
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
