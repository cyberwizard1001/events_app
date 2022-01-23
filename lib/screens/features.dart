import 'package:events_app/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:events_app/utils/colors.dart' as colors;

class FeaturesPage extends StatefulWidget {
  const FeaturesPage({Key? key}) : super(key: key);

  @override
  State<FeaturesPage> createState() => _FeaturesPageState();
}

class _FeaturesPageState extends State<FeaturesPage> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  var text = ['Register with your phone number','View events','RSVP to events','Star your favorites','Get notified of updates'];

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        5,
            (index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: colors.scaffoldColor.withAlpha(5),
          ),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: Container(
            height: MediaQuery.of(context).size.height*0.6,
            child: Center(
                child: Column(
                  children: [
                    Text(
                      text[index],
                      style: TextStyle(color: Colors.indigo),
                    ),
                    if(index==5)
                      GradientButton(onPressed: (){}, title: 'SIGN UP')
                  ],
                )),
          ),
        ));
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height*0.8,
                child: PageView.builder(
                  controller: controller,
                  // itemCount: pages.length,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
              Container(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: pages.length,
                  effect: JumpingDotEffect(
                    dotHeight: 16,
                    dotWidth: 16,
                    jumpScale: .7,
                    verticalOffset: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}

