import 'package:events_app/widgets/navigation_drawer.dart';
import 'package:events_app/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final listUpcoming = ["EVENT", "EVENT", "EVENT", "EVENT", "EVENT", "EVENT"];
  final listRSVP = ["EVENT", "EVENT", "EVENT", "EVENT", "EVENT", "EVENT"];
  final allEventsList = ["Event", "Event", "Event", "Event", "Event", "Event"];

  String chosenOption = "ALL EVENTS";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _horizontalListView(context, "Upcoming Events", listUpcoming),
            _horizontalListView(context, "RSVP'd Events", listRSVP),
            _dropDown(
                ["ALL EVENTS", "STARRED EVENTS", "RSVP'D EVENTS"], chosenOption,
                (newValue) {
              setState(() {
                chosenOption = newValue;
              });
            }),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: allEventsList.length,
              itemBuilder: (_, i) {
                return _MainCardWidget(
                    "${allEventsList[i]} ${i + 1}", () {}, context, (bool) {
                  print(bool);
                });
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: colors.accentColor),
        centerTitle: true,
        title: Text(
          "Home",
          style: GoogleFonts.montserrat(
              fontSize: 20, color: colors.primaryTextColor),
        ),
      ),
      drawer: const NavigationDrawer(),
    );
  }
}

Widget _horizontalListView(context, title, List list) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.25,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 10),
          child: Text(
            title,
            style: GoogleFonts.poppins(
                color: colors.primaryTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          child: PageView.builder(
            itemCount: list.length,
            padEnds: false,
            controller: PageController(viewportFraction: 0.8),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _horizontalWidgetCard("Event ${index + 1}", () {});
            },
          ),
        )
      ],
    ),
  );
}

Widget _horizontalWidgetCard(cardTitle, onTap) {
  return Padding(
      padding: const EdgeInsets.only(bottom: 5, left: 5),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        semanticContainer: true,
        child: Stack(
          children: [
            Ink.image(
                image: const AssetImage(
                  "assets/bg.png",
                ),
                child: InkWell(
                  onTap: onTap,
                ),
                width: double.infinity,
                fit: BoxFit.fitWidth),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  cardTitle,
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
        elevation: 5,
        color: Colors.green,
      ));
}

class _MainCardWidget extends StatefulWidget {
  const _MainCardWidget(
      this.cardTitle, this.onTap, this.context, this.isStarred,
      {Key? key})
      : super(key: key);
  final String cardTitle;
  final VoidCallback onTap;
  final Function(bool) isStarred;
  final BuildContext context;

  @override
  _MainCardWidgetState createState() => _MainCardWidgetState();
}

class _MainCardWidgetState extends State<_MainCardWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      child: Padding(
          padding: const EdgeInsets.all(5),
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            semanticContainer: true,
            child: Stack(
              children: [
                Ink.image(
                    image: const AssetImage(
                      "assets/bg.png",
                    ),
                    child: InkWell(
                      onTap: widget.onTap,
                    ),
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(173, 255, 199, 252),
                              blurRadius: 10
                            ),
                          ]),
                      child: IconButton(
                        color: isSelected
                            ? const Color.fromARGB(255, 255, 0, 119)
                            : Colors.white,
                        padding: EdgeInsets.zero,
                        splashRadius: 20,
                        icon:  Icon(
                          isSelected ? Icons.star : Icons.star_border,
                          size: 36,
                        ),
                        onPressed: () {
                          setState(() {
                            isSelected = !isSelected;
                          });
                          widget.isStarred(isSelected);
                        },
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            widget.cardTitle,
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: ElevatedButton.icon(
                              onPressed: widget.onTap,
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              label: Text(
                                "Know More",
                                style: GoogleFonts.poppins(
                                  color: colors.secondaryTextColor,
                                ),
                              ),
                              icon: const Icon(Icons.arrow_forward, size: 18),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
            elevation: 5,
            color: Colors.green,
          )),
    );
  }
}

Widget _dropDown(listOfOptions, chosenOption, onChanged) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Card(
      elevation: 5,
      color: colors.primaryTextColor,
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton<dynamic>(
            dropdownColor: colors.primaryTextColor,
            icon: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Icon(
                // Add this
                Icons.keyboard_arrow_down, // Add this
                color: colors.errorColor, // Add this
              ),
            ),
            value: chosenOption,
            isExpanded: false,
            items: listOfOptions.map<DropdownMenuItem>((value) {
              return DropdownMenuItem(
                value: value,
                child: Container(
                  child: Text(
                    value,
                    overflow: TextOverflow.ellipsis,
                  ),
                  padding: const EdgeInsets.only(left: 8, right: 12),
                ),
              );
            }).toList(),
            onChanged: onChanged,
            style: GoogleFonts.poppins(
                color: Colors.white, decorationColor: colors.errorColor),
          ),
        ),
      ),
    ),
  );
}
