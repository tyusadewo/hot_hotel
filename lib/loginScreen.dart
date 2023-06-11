import 'package:flutter/material.dart';

import 'loginDesktop.dart';
import 'loginMobile.dart';
import 'loginTablet.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const loginMobile();
          } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
            return const loginTablet();
          } else {
            return const loginDesktop();
          }
        },
      ),
    );
  }
}