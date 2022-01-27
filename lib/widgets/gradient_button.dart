import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:events_app/utils/colors.dart' as colors;

class GradientButton extends StatefulWidget {
  GradientButton({Key? key,required this.startingColor, required this.endingColor, required this.onPressed,required this.title}) : super(key: key);

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
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
                colors: [widget.startingColor, widget.endingColor],
                begin: Alignment.topLeft,
                end: Alignment.centerRight)),
        child: Container(
          constraints:
          const BoxConstraints(maxWidth: 300.0, minHeight: 40, maxHeight: 50),
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80.0)),
        padding: const EdgeInsets.all(0.0),
      ),
    );
  }
}
