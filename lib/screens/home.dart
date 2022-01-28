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

  //TODO: Update lists with model
  final listUpcoming = ["EVENT", "EVENT", "EVENT", "EVENT", "EVENT", "EVENT"];
  final listRSVP = ["EVENT", "EVENT", "EVENT", "EVENT", "EVENT", "EVENT"];
  final allEventsList = ["Event", "Event", "Event", "Event", "Event", "Event"];

  String chosenOption = "ALL EVENTS";

  @override
  void initState() {
    super.initState();
  }

  Future<void> _refreshRandomNumbers() => Future.delayed(const Duration(seconds: 2), () {
  });

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
                  return _MainCardWidget(
                      "${allEventsList[i]} ${i + 1}", () {}, context, (bool) {
                    print(bool);
                  }, "January ${20+i} 2022",true);
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
    height: MediaQuery.of(context).size.height * 0.235,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 10,bottom: 10),
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
              return _horizontalWidgetCard("Event ${index + 1}", "January ${index+20} 2022", () {}, false);
              //TODO: Replace with inFocus variable
            },
          ),
        )
      ],
    ),
  );
}

Widget _horizontalWidgetCard(cardTitle, cardDate, onTap,inFocus) {
  return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 15),
      child: Card(
        color: inFocus==true ? colors.activeCardColor : colors.inactiveCardColor ,
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
                      child: Text(
                        cardDate,
                          style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)
                      ),
                    )
                  ],
                ),
              ),
          ],
        ),
        elevation: 5,
      ));
}

class _MainCardWidget extends StatefulWidget {
  const _MainCardWidget(
      this.cardTitle, this.onTap, this.context, this.isStarred, this.cardDate,this.onFocus,
      {Key? key})
      : super(key: key);
  final String cardTitle;
  final String cardDate;
  final VoidCallback onTap;
  final Function(bool) isStarred;
  final BuildContext context;
  final bool onFocus;

  @override
  _MainCardWidgetState createState() => _MainCardWidgetState();
}

class _MainCardWidgetState extends State<_MainCardWidget> {
  bool isSelected = false;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.23,
      width: double.infinity,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            semanticContainer: true,
            child: Stack(
              children: [
                InkWell(
                      onTap: widget.onTap,
                    ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(173, 255, 199, 252),
                                blurRadius: 30),
                          ]),
                      child: IconButton(
                        color: isSelected
                            ? const Color.fromARGB(255, 255, 0, 119)
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
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            widget.cardTitle,
                            style: GoogleFonts.raleway(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Text(
                                  widget.cardDate,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    color: colors.whiteColor,
                                  ),
                                ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            elevation: 10,
            color: widget.onFocus ? colors.inactiveCardColor : colors.activeCardColor,
          )),
    );
  }
}

Widget _dropDown(listOfOptions, chosenOption, onChanged) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Card(
      //TODO: Reduce the height of the card
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
