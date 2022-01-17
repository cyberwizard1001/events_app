import 'package:events_app/screens/sign_up.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
              ElevatedButton(
                onPressed: () {},
                child: Ink(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                          colors: [Color(0xffFF5B72), Color(0xffFF9779)],
                          begin: Alignment.topLeft,
                          end: Alignment.centerRight)),
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 300.0, minHeight: 60),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Get Started',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: colors.secondaryTextColor,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: const EdgeInsets.all(0.0),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: colors.whiteColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: const EdgeInsets.all(0.0),
                      ),
                      onPressed: () {},
                      child: Container(
                          constraints: const BoxConstraints(
                              maxWidth: 300.0, minHeight: 60),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Login',
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
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
