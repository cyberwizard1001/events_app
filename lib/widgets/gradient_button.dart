import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:events_app/utils/colors.dart' as colors;

class GradientButton extends StatefulWidget {
  GradientButton(
      {Key? key,
      required this.startingColor,
      required this.endingColor,
      required this.onPressed,
      required this.title})
      : super(key: key);

  final Function()? onPressed;
  final Color startingColor;
  final Color endingColor;
  final String title;

  @override
  _GradientButtonState createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          child: Ink(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                    colors: [widget.startingColor, widget.endingColor],
                    begin: Alignment.topLeft,
                    end: Alignment.centerRight)),
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14),
                child: Text(
                  widget.title,
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: colors.secondaryTextColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
            padding: const EdgeInsets.all(0.0),
          ),
        ),
      ),
    );
  }
}
