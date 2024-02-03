import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobilelayout;
  final Widget tabletelayout;
  final Widget weblayout;

  ResponsiveLayout(
      {required this.mobilelayout,
      required this.tabletelayout,
      required this.weblayout});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return mobilelayout;
      } else if (constraints.maxWidth < 1100) {
        return tabletelayout;
      } else {
        return weblayout;
      }
    });
  }
}
