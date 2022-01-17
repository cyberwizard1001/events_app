import 'package:events_app/screens/bottom_navg.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:events_app/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'category.dart';
class SignUpWidget extends StatelessWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background.png"),
                    fit: BoxFit.cover)),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                ),
                Text(
                  "Sign Up",
                  style: GoogleFonts.sourceSansPro(
                      color: colors.accentColor, fontSize: 40),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
                  child: TextFormField(
                    style: darkTheme.DarkTheme.textTheme.bodyText1,
                    decoration: InputDecoration(
                        hintText: "Please enter username here",
                        label: const Text("Username"),
                        hintStyle:
                            GoogleFonts.poppins(color: colors.darkTextBoxColor),
                        labelStyle: GoogleFonts.poppins(
                            color: colors.darkTextBoxColor)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                  child: TextFormField(
                    style: darkTheme.DarkTheme.textTheme.bodyText1,
                    decoration: InputDecoration(
                        hintText: "Please enter password here",
                        label: const Text("Password"),
                        hintStyle:
                            GoogleFonts.poppins(color: colors.darkTextBoxColor),
                        labelStyle: GoogleFonts.poppins(
                            color: colors.darkTextBoxColor)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                  child: TextFormField(
                    style: darkTheme.DarkTheme.textTheme.bodyText1,
                    decoration: InputDecoration(
                      hintText: "Enter phone number here",
                      label: const Text("Phone Number"),
                      hintStyle:
                          GoogleFonts.poppins(color: colors.darkTextBoxColor),
                      labelStyle:
                          GoogleFonts.poppins(color: colors.darkTextBoxColor),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1.0,
                              style: BorderStyle.solid,
                              color: colors.accentColor)),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: ElevatedButton.icon(
                        onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Bottom()));},
                        icon: Icon(
                          Icons.arrow_right_alt_rounded,
                          color: colors.scaffoldColor,
                        ),
                        label: Text(
                          "Get OTP",
                          style: GoogleFonts.sourceSansPro(
                              color: colors.buttonTextColor,
                              fontWeight: FontWeight.w700),
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }
}
