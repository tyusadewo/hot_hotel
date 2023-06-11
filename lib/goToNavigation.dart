import 'package:flutter/material.dart';
import 'package:hot_hotel/navigation/navigation_Bar.dart';

class gotoNavigation extends StatelessWidget {
  const gotoNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Navigation_Bar();
        },
      ),
    );
  }
}