import 'package:flutter/material.dart';
import 'package:hot_hotel/navigation/navigation_bar.dart';

class AppView extends StatefulWidget {
  final Widget child;

  const AppView({required this.child});

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    //NavigationBar navi = new NavigationBar();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [Navigation_Bar(), Expanded(child: widget.child)],
      ),
    );
  }
}
