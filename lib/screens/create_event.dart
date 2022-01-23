import 'package:events_app/utils/colors.dart' as colors;
import 'package:events_app/widgets/appbar_back_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({Key? key}) : super(key: key);

  @override
  _CreateEventState createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  String dropdownValue = 'Choose category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarBackButton("Event 1"),
      backgroundColor: colors.scaffoldColor,
      body: Stack(
        children: [
          SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: const Text("Event Name"),
                        filled: true,
                        hintText: 'This is Event1',
                        suffixIcon: IconButton(
                            icon: const Icon(Icons.clear), onPressed: () {}),
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
                        horizontal: 30, vertical: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: const Text("Event Description"),
                        filled: true,
                        hintText: 'This is Event1',
                        suffixIcon: IconButton(
                            icon: Icon(Icons.clear), onPressed: () {}),
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

                  //             Padding(padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  //             child: DropdownButton(
                  //               icon: Icon(Icons.keyboard_arrow_down_outlined),
                  //               value: dropdownValue,
                  //               onChanged: (String? newValue) {
                  //                 setState(() {
                  //                   dropdownValue = newValue!;
                  //                 });
                  //               },
                  //               items:    <String>['Choose Category', 'Spiritual', 'Cultural']
                  //     .map<DropdownMenuItem<String>>((String value) {
                  // return DropdownMenuItem<String>(
                  // value: value,
                  // child: Text(value),
                  // );
                  // }).toList(),
                  //             ),)

                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: const Text("Event Date"),
                        filled: true,
                        hintText: 'Input Text',
                        suffixIcon: IconButton(
                            icon: Icon(Icons.calendar_today), onPressed: () {}),
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
                        horizontal: 30, vertical: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: const Text("Event Time"),
                        filled: true,
                        hintText: 'Input Text',
                        suffixIcon: IconButton(
                            icon: Icon(Icons.calendar_today), onPressed: () {}),
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
                    padding: const EdgeInsets.fromLTRB(30, 70, 30, 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: const Text("Event Location"),
                        filled: true,
                        hintText: 'Amriteswari Hall',
                        suffixIcon: IconButton(
                            icon: Icon(Icons.clear), onPressed: () {}),
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
                        horizontal: 30, vertical: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: const Text("RSVP limit"),
                        filled: true,
                        hintText: '50',
                        suffixIcon: IconButton(
                            icon: Icon(Icons.clear), onPressed: () {}),
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
                    padding: const EdgeInsets.fromLTRB(10, 80, 10, 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CreateEvent()));
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                                colors: [Color(0xffFF5B72), Color(0xffFF9779)],
                                begin: Alignment.topLeft,
                                end: Alignment.centerRight)),
                        child: Container(
                          constraints: const BoxConstraints(
                              maxWidth: 220.0, minHeight: 40),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'CREATE EVENT',
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
                  )
                ],
              ),
              physics: const ScrollPhysics())
        ],
      ),
    );
  }
}
