import 'package:flutter/material.dart';

import 'loginScreen.dart';
import 'goToNavigation.dart';
import 'appView.dart';
import 'package:hot_hotel/routes/router_generator.dart';
import 'package:hot_hotel/routes/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const loginScreen(),
      // home: const mainMenu(),
      // home: const CustomMenu(),
      // home: gotoNavigation(),

// Why builder is used: https://stackoverflow.com/questions/49748759/example-for-builder-property-in-materialapp-class-in-flutter
      // builder: (_, child) => AppView(
      //   child: Container(child: child),
      // ),
      //  initialRoute: routeHome,
      // navigatorKey: navKey,
      // onGenerateRoute: RouteGenerator.generateRoute,

    );
  }
}