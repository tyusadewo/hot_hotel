import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hot_hotel/routes/routes.dart';
import 'package:hot_hotel/ui/aboutPage.dart';
import 'package:hot_hotel/ui/contactPage.dart';
import 'package:hot_hotel/ui/homePage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case routeAbout:
        return MaterialPageRoute(builder: (_) => AboutPage());
        break;
      case routeContacts:
        return MaterialPageRoute(builder: (_) => ContactPage());
        break;
    }
    return MaterialPageRoute(builder: (_) => HomePage());
  }
}
