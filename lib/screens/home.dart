import 'package:events_app/screens/sign_in.dart';
import 'package:events_app/screens/sign_up.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.30,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Container(
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.08),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpWidget()));
                        },
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.sourceSansPro(
                              color: colors.darkButtonTextColor,
                          fontWeight: FontWeight.w700),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInWidget()));
                        },
                        child: Text("Sign In",
                            style: GoogleFonts.sourceSansPro(
                                color: colors.darkButtonTextColor,
                            fontWeight: FontWeight.w700))),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
