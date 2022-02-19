import 'package:auto_size_text/auto_size_text.dart';
import 'package:events_app/screens/admin_eventpage.dart';
import 'package:events_app/screens/events_page.dart';
import 'package:events_app/screens/people_list.dart';
import 'package:events_app/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  _AdminHomeState createState() => _AdminHomeState();
}

///Apparently using static values in SizedBoxes and ConstrainedBoxes are
///more responsive than using mediaQueries, the value is relative just like dp
/// in android

class _AdminHomeState extends State<AdminHome> {
  //TODO: Update lists with model
  final listUpcoming = ["EVENT", "EVENT", "EVENT", "EVENT", "EVENT", "EVENT"];
  final listRSVP = ["EVENT", "EVENT", "EVENT", "EVENT", "EVENT", "EVENT"];
  final allEventsList = ["Event", "Event", "Event", "Event", "Event", "Event"];

  String chosenOption = "ALL EVENTS";
  int focusedPage = 0;

  @override
  void initState() {
    super.initState();
  }

  Future<void> _refreshRandomNumbers() =>
      Future.delayed(const Duration(seconds: 2), () {});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
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
              _HorizontalListView(
                  context: context,
                  list: listUpcoming,
                  title: "Upcoming Events"),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("All Events"),
              ),
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
                              builder: (context) => const AdminEventsPage()));
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
          "Admin Console",
          style: GoogleFonts.montserrat(
              fontSize: 22, color: colors.primaryTextColor),
        ),
      ),
      drawer: const NavigationDrawer(),
    );
  }
}

class _HorizontalListView extends StatefulWidget {
  final List list;
  final String title;
  final BuildContext context;

  const _HorizontalListView(
      {Key? key,
        required this.context,
        required this.title,
        required this.list})
      : super(key: key);

  @override
  _HorizontalListViewState createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<_HorizontalListView> {
  int currentPagePosition = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
            child: Text(
              widget.title,
              style: GoogleFonts.poppins(
                  color: colors.primaryTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: PageView.builder(
              itemCount: widget.list.length,
              padEnds: false,
              onPageChanged: (page) {
                setState(() {
                  currentPagePosition = page;
                });
              },
              controller: PageController(viewportFraction: 0.7),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return _horizontalWidgetCard("Event ${index + 1}",
                    "January ${index + 20} 2022", () {}, currentPagePosition == index);
              },
            ),
          )
        ],
      ),
    );
  }
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
            Positioned(
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/mask.png',
                    fit: BoxFit.fill,
                    width: 70,
                  ),
                )),
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
                      color: colors.inactiveCardColor,
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
