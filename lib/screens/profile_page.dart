import 'package:events_app/screens/create_event.dart';
import 'package:flutter/material.dart';
import 'package:events_app/widgets/appbar_back_button.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({Key? key}) : super(key: key);

  @override
  _Profile_PageState createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBackButton(""),
      backgroundColor: colors.scaffoldColor,
      body: Stack(
        children: [

           Align(
             alignment: Alignment.topCenter,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 70,
                  child: ClipOval(
                    child:  SvgPicture.asset('assets/svg/female.svg'),
                  ),
                ),
                IconButton(onPressed:  (){}, icon: Icon(Icons.camera_alt,size: 20,),color: colors.primaryTextColor,)
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [

             SingleChildScrollView(
               physics: const ScrollPhysics(

               ),
               child: Column(
                 children: [
                   Padding(
                     padding:
                     const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                     child: TextFormField(
                       decoration: InputDecoration(

                         filled: true,
                         hintText:'Sumithra Sudhakar' ,
                         suffixIcon: Icon(Icons.edit),

                         hintStyle: GoogleFonts.poppins(
                             color:
                             colors.primaryTextColor.withOpacity(0.7)),
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
                     padding:
                     const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                     child: TextFormField(
                       decoration: InputDecoration(

                         filled: true,
                         hintText:'1234567890' ,
                         suffixIcon: Icon(Icons.edit),
                         hintStyle: GoogleFonts.poppins(
                             color:
                             colors.primaryTextColor.withOpacity(0.7)),
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
                     padding:
                     const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                     child: TextFormField(
                       decoration: InputDecoration(

                         filled: true,
                         hintText:'xyz@gmail.com' ,
                         suffixIcon: Icon(Icons.edit),
                         hintStyle: GoogleFonts.poppins(
                             color:
                             colors.primaryTextColor.withOpacity(0.7)),
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
                     padding: const EdgeInsets.fromLTRB( 10, 80, 10, 10),
                     child: ElevatedButton(
                       onPressed: () {
                         Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const CreateEvent()));
                       },
                       child: Ink(
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                             gradient: const LinearGradient(
                                 colors: [
                                   Color(0xffFF5B72),
                                   Color(0xffFF9779)
                                 ],
                                 begin: Alignment.topLeft,
                                 end: Alignment.centerRight)),
                         child: Container(
                           constraints: const BoxConstraints(
                               maxWidth: 220.0, minHeight: 40),
                           alignment: Alignment.center,
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text(
                               'SAVE',
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
                       ),),
                   )
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
