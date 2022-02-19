import 'package:events_app/screens/sign_up.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:events_app/widgets/appbar_back_button.dart';
import 'package:events_app/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:events_app/utils/constants.dart' as constants;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FeaturesPage extends StatefulWidget {
  const FeaturesPage({Key? key}) : super(key: key);

  @override
  State<FeaturesPage> createState() => _FeaturesPageState();
}

class _FeaturesPageState extends State<FeaturesPage> {
  final controller = PageController(viewportFraction: 1.0, keepPage: true);

  var text = [
    'Register with your phone number',
    'View events',
    'RSVP to events',
    'Star your favorites',
    'Get notified of updates'
  ];

  var subText = [
    'Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum',
    'Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum',
    'Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum',
    'Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum',
    'Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum Lorem impsum',
  ];

  var image_location = [
    'assets/svg/register.svg',
    'assets/svg/view_events.svg',
    'assets/svg/rsvp_events.svg',
    'assets/svg/star_events.svg',
    'assets/svg/update_events.svg',
  ];

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
      5,
      (index) => Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: SvgPicture.asset(
                      image_location[index],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      children: [ Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          text[index],
                          style: GoogleFonts.nunito(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: colors.primaryTextColor),
                        ),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              subText[index],
                              style: GoogleFonts.nunito(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: colors.primaryTextColor),
                            ),
                          ),
                        ),
                        ]
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Scaffold(
            body: Stack(
              children:[
                Container(
                  decoration: constants.gradientDecoration,
                  child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 8,
                        child: PageView.builder(
                          controller: controller,
                          // itemCount: pages.length,
                          itemBuilder: (_, index) {
                            return pages[index % pages.length];
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SmoothPageIndicator(
                              controller: controller,
                              count: pages.length,
                              effect: const JumpingDotEffect(
                                dotHeight: 7,
                                dotWidth: 7,
                                jumpScale: .7,
                                verticalOffset: 10,
                              ),
                            ),
                          const SizedBox(width: 30,),
                          ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const SignUpWidget()));
                                },
                                child: Text('SIGN UP', style: GoogleFonts.nunito(fontSize: 17, fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    ],
                  ),
              ),
                ),]
            ),
          ),
        ),
      ],
    );
  }
}
