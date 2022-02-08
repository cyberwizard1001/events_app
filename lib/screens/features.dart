import 'package:events_app/screens/sign_up.dart';
import 'package:events_app/utils/colors.dart' as colors;
import 'package:events_app/widgets/appbar_back_button.dart';
import 'package:events_app/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.transparent,
        ),
        margin: const EdgeInsets.only(top: 40, left: 10, right: 10),
        child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: SvgPicture.asset(
                      image_location[index],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    text[index],
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: colors.primaryTextColor),
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
                SvgPicture.asset('assets/svg/background.svg', fit: BoxFit.fill, width: double.infinity,),
                Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: PageView.builder(
                        controller: controller,
                        // itemCount: pages.length,
                        itemBuilder: (_, index) {
                          return pages[index % pages.length];
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: pages.length,
                        effect: const JumpingDotEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          jumpScale: .7,
                          verticalOffset: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 40),
                      child: GradientButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpWidget()));
                          },
                          startingColor: const Color(0xff1D5AFF),
                          endingColor: const Color(0xff8F48FF),
                          title: 'SIGN UP'),
                    )
                  ],
                ),
              ),]
            ),
          ),
        ),
      ],
    );
  }
}
