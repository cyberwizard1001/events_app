import 'package:events_app/screens/create_event.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:events_app/widgets/appbar_back_button.dart';
import 'package:events_app/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:events_app/utils/constants.dart' as constants;

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarBackButton("Update Profile"),
        body: Container(
          decoration: constants.gradientDecoration,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 70,
                          child: ClipOval(
                            child: SvgPicture.asset('assets/svg/female.svg'),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.camera_alt,
                            size: 20,
                          ),
                          color: colors.primaryTextColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: TextFormField(
                            style: GoogleFonts.montserrat(color: colors.primaryTextColor),
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'Sumithra Sudhakar',
                              suffixIcon: Icon(Icons.edit, color: colors.whiteColor,),
                              hintStyle: GoogleFonts.poppins(
                                  color: colors.primaryTextColor.withOpacity(0.7)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(5)),
                              fillColor: colors.textBoxFill,
                              focusColor: colors.textBoxFill,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: TextFormField(
                            style: GoogleFonts.montserrat(color: colors.primaryTextColor),
                            decoration: InputDecoration(
                              filled: true,
                              hintText: '1234567890',
                              suffixIcon: Icon(Icons.edit, color: colors.whiteColor,),
                              hintStyle: GoogleFonts.poppins(
                                  color: colors.primaryTextColor.withOpacity(0.7)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(5)),
                              fillColor: colors.textBoxFill,
                              focusColor: colors.textBoxFill,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: TextFormField(
                            style: GoogleFonts.montserrat(color: colors.primaryTextColor),
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'xyz@gmail.com',
                              suffixIcon: Icon(Icons.edit, color: colors.whiteColor,),
                              hintStyle: GoogleFonts.poppins(
                                  color: colors.primaryTextColor.withOpacity(0.7)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(5)),
                              fillColor: colors.textBoxFill,
                              focusColor: colors.textBoxFill,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(30, 50, 10, 50),
                            child: ElevatedButton(
                              child: Text('Update Profile',style: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 15),),
                                onPressed: (){Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const CreateEvent()));}),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

