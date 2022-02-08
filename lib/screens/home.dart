import 'package:auto_size_text/auto_size_text.dart';
import 'package:events_app/screens/events_page.dart';
import 'package:events_app/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

///Apparently using static values in SizedBoxes and ConstrainedBoxes are
///more responsive than using mediaQueries, the value is relative just like dp
/// in android

class _HomeState extends State<Home> {
  //TODO: Update lists with model
  final listUpcoming = ["EVENT", "EVENT", "EVENT", "EVENT", "EVENT", "EVENT"];
  final listRSVP = ["EVENT", "EVENT", "EVENT", "EVENT", "EVENT", "EVENT"];
  final allEventsList = ["Event", "Event", "Event", "Event", "Event", "Event"];

  String chosenOption = "ALL EVENTS";

  @override
  void initState() {
    super.initState();
  }

  Future<void> _refreshRandomNumbers() =>
      Future.delayed(const Duration(seconds: 2), () {});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        color: colors.accentColor,
        onRefresh: () {
          //TODO: Refresh page on pull
          return _refreshRandomNumbers();
        },
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _horizontalListView(context, "Upcoming Events", listUpcoming),
              _horizontalListView(context, "RSVP'd Events", listRSVP),
              _dropDown(["ALL EVENTS", "STARRED EVENTS", "RSVP'D EVENTS"],
                  chosenOption, (newValue) {
                setState(() {
                  chosenOption = newValue;
                });
              }),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: allEventsList.length,
                itemBuilder: (_, i) {
                  return _MainContentCardWidget(
                    cardTitle: 'Some Festival Name Here',
                    cardSubTitle: 'This is some festival on some date',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const EventsPage()));
                    },
                    isStarred: (bool) {},
                    cardDate: 'Feb 2 2022',
                  );
                },
              )
            ],
          ),
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
    height: 200,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
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
            controller: PageController(viewportFraction: 0.68),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _horizontalWidgetCard("Event ${index + 1}",
                  "January ${index + 20} 2022", () {}, false);
              //TODO: Replace with inFocus variable
            },
          ),
        )
      ],
    ),
  );
}

Widget _horizontalWidgetCard(cardTitle, cardDate, onTap, inFocus) {
  return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 15),
      child: Card(
        color:
            inFocus == true ? colors.activeCardColor : colors.inactiveCardColor,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        semanticContainer: true,
        child: Stack(
          children: [
            InkWell(
              onTap: onTap,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //TODO: Add icon based on event category
                  Text(
                    cardTitle,
                    style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(cardDate,
                        style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            ),
          ],
        ),
        elevation: 5,
      ));
}

class _MainContentCardWidget extends StatefulWidget {
  const _MainContentCardWidget({
    Key? key,
    required this.cardSubTitle,
    required this.cardTitle,
    required this.cardDate,
    required this.onTap,
    required this.isStarred,
  }) : super(key: key);
  final String cardTitle;
  final String cardSubTitle;
  final String cardDate;
  final VoidCallback onTap;
  final Function(bool) isStarred;

  @override
  _MainContentCardWidgetState createState() => _MainContentCardWidgetState();
}

class _MainContentCardWidgetState extends State<_MainContentCardWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            var horizontalCenteredDisplacement = constraints.maxWidth * 0.3;
            return Stack(
              children: [
                Positioned.fill(
                  left: (horizontalCenteredDisplacement) / 2,
                  child: InkWell(
                    child: Card(
                      color: colors.activeCardColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: InkWell(
                        onTap: widget.onTap,
                        borderRadius: BorderRadius.circular(10.0),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: (horizontalCenteredDisplacement / 2) + 15,
                              top: 20,
                              bottom: 15,
                              right: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      widget.cardTitle,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: GoogleFonts.raleway(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: AutoSizeText(
                                        widget.cardSubTitle,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.raleway(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 4),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: colors.dividerColor),
                                      height: 4.0,
                                      width: 32.0,
                                    ),
                                    Expanded(child: Container()),
                                    AutoSizeText(
                                      widget.cardDate,
                                      minFontSize: 15,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color: colors.whiteColor,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              IconButton(
                                color: isSelected
                                    ? colors.accentColor
                                    : Colors.white,
                                padding: EdgeInsets.zero,
                                splashRadius: 15,
                                icon: Icon(
                                  isSelected ? Icons.star : Icons.star_border,
                                  size: 25,
                                ),
                                onPressed: () {
                                  setState(() {
                                    isSelected = !isSelected;
                                  });
                                  widget.isStarred(isSelected);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    child: Image.asset(
                  'assets/mask.png',
                  width: horizontalCenteredDisplacement,
                  fit: BoxFit.fill,
                ))
              ],
            );
          },
        ),
      ),
    );
  }
}

Widget _dropDown(listOfOptions, chosenOption, onChanged) {
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Card(
      elevation: 5,
      color: colors.dropdownColor,
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton<dynamic>(
            dropdownColor: colors.dropdownColor,
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
                child: Text(
                  value,
                  overflow: TextOverflow.ellipsis,
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
