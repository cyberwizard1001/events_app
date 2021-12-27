import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:events_app/utils/colors.dart' as colors;

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
                  height: MediaQuery.of(context).size.height*0.45,
                ),
                Text("Sign Up",style: GoogleFonts.sourceSansPro(
                  color: colors.darkAccentColor,
                  fontSize: 40
                ),),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Please enter username here",
                    label: Text("Username"),
                  ),
                ),
                TextFormField(),
                TextFormField(),
                Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1),
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_right_alt_rounded),
                        label: Text("Get OTP")))
              ],
            ),
          )
        ],
      ),
    );
  }
}
