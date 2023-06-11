import 'package:flutter/material.dart';
import 'package:hot_hotel/routes/routes.dart';
import 'package:hot_hotel/navigation/interactiveNavItem.dart';

class NavigationItem extends StatelessWidget {
  final String title;
  final String routeName;
  final bool selected;
  final Function onHighlight;

  const NavigationItem({
    required this.title,
    required this.routeName,
    required this.selected,
    required this.onHighlight,
  });

  @override
  Widget build(BuildContext context) {
    var child2 = null;
    return GestureDetector(
      onTap: () {
        navKey.currentState?.pushNamed(routeName);
        onHighlight(routeName);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: InteractiveNavItem(
          text: title,
          routeName: routeName,
          selected: selected, child: child2,
        ),
      ),
    );
  }
}
