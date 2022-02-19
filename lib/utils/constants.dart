import 'package:flutter/material.dart';
import 'package:events_app/utils/colors.dart' as colors;

var gradientDecoration = BoxDecoration(
gradient: LinearGradient(
colors: colors.gradientColors,
begin: Alignment.topCenter,
end: Alignment.bottomCenter,
stops: const [0.0,0.5,1.0]
));

