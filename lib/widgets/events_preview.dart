import 'package:auto_size_text/auto_size_text.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsPreview extends StatelessWidget {
   const EventsPreview(this.eventName, this.imageUrl, this.route, {Key? key}) : super(key: key);
   final String imageUrl;
   final String eventName;
   final Widget route;
  @override
  Widget build(BuildContext context) {
    return Expanded(child:  Padding(
      padding: const EdgeInsets.all(15),
      child:  Card(

          elevation: 20,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Ink.image(image:  AssetImage(imageUrl),
                height: 240,
                fit: BoxFit.cover,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => route));
                  },
                ),),
              Text(eventName, style:  GoogleFonts.sourceSansPro(
                  fontSize: 30,
                  color: colors.primaryTextColor,
                  fontWeight: FontWeight.w700)),
            ],
          )

      )
      ,
    ));
  }
}
