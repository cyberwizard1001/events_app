import 'package:events_app/screens/home.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:events_app/utils/constants.dart' as constants;

class SignInWidget extends StatelessWidget {
  const SignInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: constants.gradientDecoration,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: Column(
                      children: [
                        Expanded(child: Container(), flex: 1,),
                        Expanded(
                          flex: 4,
                          child: Container(
                              child: SvgPicture.asset('assets/svg/title_image.svg')
                          ),),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 80),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Sign In',
                                  style: GoogleFonts.nunito(
                                    color: colors.primaryTextColor,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 50, top: 25, bottom: 10),
                              child: TextFormField(
                                  style: GoogleFonts.montserrat(color: colors.primaryTextColor),
                                  decoration: InputDecoration(
                                    label: Text('NAME',
                                        style: GoogleFonts.raleway(
                                            color: colors.textBoxTextColor,
                                            fontSize: 12)),
                                    filled: true,
                                    hintText: 'Please enter your name',
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
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 50, top: 15, bottom: 10),
                              child: TextFormField(
                                  style: GoogleFonts.montserrat(color: colors.primaryTextColor),
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
                            Padding(
                              padding: const EdgeInsets.only(top: 50.0, left: 20),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const Home()));
                                  },
                                  child: Text('SIGN IN',style: GoogleFonts.nunito(fontWeight: FontWeight.bold),),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                            flex: 1,
                            child: Container()
                        )
                      ],
                    ),
                  ),
                )
              ],
            ))
      ],
    );
  }
}
