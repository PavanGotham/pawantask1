import 'package:flutter/material.dart';

class Webscreen extends StatelessWidget {
  final Widget largeScreen;
  final Widget? smallScreen;

  const Webscreen({
    Key? key,
    required this.largeScreen,
    this.smallScreen,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 700;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1000;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1000) {
          return largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
