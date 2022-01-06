import 'package:events_app/screens/home.dart';
import 'package:events_app/screens/side_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:events_app/utils/colors.dart' as colors;

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.supervised_user_circle_outlined),
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SideBar()));
          },
        ),
        title: Center(
          child: Text(
            "Categories",
            style: GoogleFonts.sourceSansPro(
                color: colors.darkPrimaryTextColor,
                fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor: colors.darkScaffoldColor,
      ),
      backgroundColor: colors.darkScaffoldColor,
      body: ListView(
        padding: EdgeInsets.fromLTRB( 5, 30, 5, 30),
        
        children: [

          padding( "assets/spiritual.png", "assets/img.png", "Spritual", TextAlign.right),
          padding( "assets/img.png", "assets/technical.png", "Technical", TextAlign.left),
          padding( "assets/cultural.png", "assets/img.png", "Cultural", TextAlign.right),


        ],
      ),
    );
  }
}


Padding padding(leading, trailing, title, align){

  return Padding(
      padding:  const EdgeInsets.fromLTRB( 5, 25, 5, 25),
      child: Card(
        color: colors.darkScaffoldColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            InkWell(
              splashColor: colors.darkAccentColor,
              onTap: (){},
              child:Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListTile(
                    leading: Image.asset(leading, height: 100,width: 100,),
                    title:   Text(title,textAlign: align,

                        style: GoogleFonts.sourceSansPro(
                            color: colors.darkAccentColor,

                            fontSize: 50,
                            fontWeight: FontWeight.w400)),
                    trailing: Image.asset( trailing, height: 100,width: 100,),
                  )) ,
            )
          ],
        ),


      )

  );
}












