import 'package:events_app/utils/colors.dart' as colors;
import 'package:events_app/widgets/appbar_back_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarBackButton('Sign up'),
      body: Stack(
        children: [
          SvgPicture.asset('assets/svg/content_background.svg'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleChildScrollView(
                physics: const ScrollPhysics(),
                  child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.32,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Sign up',
                        style: GoogleFonts.poppins(
                            color: colors.primaryTextColor,
                            fontSize: 35,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),child:
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text('Username'),
                        filled: true,
                        hintText: 'Please enter your username',
                        hintStyle: GoogleFonts.poppins(color: colors.primaryTextColor.withOpacity(0.7)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(5)),
                        fillColor: colors.textBoxFill,
                        focusColor: colors.textBoxFill,
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(5)),
                      )
                    ),),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),child:
                  TextFormField(
                      decoration: InputDecoration(
                        label: Text('Phone number'),
                        filled: true,
                        hintText: 'Please enter your phone number',
                        hintStyle: GoogleFonts.poppins(color: colors.primaryTextColor.withOpacity(0.7)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(5)),
                        fillColor: colors.textBoxFill,
                        focusColor: colors.textBoxFill,
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(5)),
                      )
                  ),),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),child:
                  TextFormField(
                      decoration: InputDecoration(
                        label: Text('Password'),
                        filled: true,
                        hintText: 'Please enter your password',
                        hintStyle: GoogleFonts.poppins(color: colors.primaryTextColor.withOpacity(0.7)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(5)),
                        fillColor: colors.textBoxFill,
                        focusColor: colors.textBoxFill,
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(5)),
                      ),
                  ),),
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
                        const BoxConstraints(maxWidth: 220.0, minHeight: 40),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'SIGN UP',
                            style: GoogleFonts.poppins(
                                fontSize: 15,
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
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}
