import 'package:flutter/material.dart';
import 'package:web_protofolio/Responsive/ResponsiveLayout.dart';
import 'package:web_protofolio/costum_tab_bar.dart';
import 'package:web_protofolio/mobile/screens/MobileLayout.dart';
import 'package:web_protofolio/tablete/screens/TabletLayout.dart';
import 'package:web_protofolio/web/screens/WebLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: ResponsiveLayout(
        mobilelayout: MobileLayout(),
        tabletelayout: TabletLayout(),
        weblayout: WebLayout(),
      ),
    );
  }
}
