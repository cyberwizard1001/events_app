import 'package:events_app/screens/category.dart';
import 'package:events_app/screens/home.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:events_app/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  "Sign In",
                  style: GoogleFonts.sourceSansPro(
                      color: colors.darkAccentColor, fontSize: 40),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
                  child: TextFormField(
                    style: darkTheme.DarkTheme.textTheme.bodyText1,
                    decoration: const InputDecoration(
                      hintText: "Please enter phone number here",
                      label: Text("Phone Number"),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                  child: TextFormField(
                    style: darkTheme.DarkTheme.textTheme.bodyText1,
                    decoration: const InputDecoration(
                      hintText: "Please enter password here",
                      label: Text("Password"),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) =>
                                  CategoryScreen()));
                        },
                        icon: Icon(
                          Icons.arrow_right_alt_rounded,
                          color: colors.darkScaffoldColor,
                        ),
                        label: Text(
                          "Sign In",
                          style: GoogleFonts.sourceSansPro(
                              color: colors.darkButtonTextColor,
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
