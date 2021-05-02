import 'package:flutter/material.dart';
import 'package:karthick_portfolio/Screens/WelcomePage.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:karthick_portfolio/Screens/ProjectScreen.dart';
import 'package:karthick_portfolio/Screens/AboutPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 initialRoute: WelcomePage.id,
      routes: {
   WelcomePage.id:(context)=>WelcomePage(),
     ProjectScreen.id:(context)=>ProjectScreen(),
        QuotesPage.id:(context)=>QuotesPage(),

      },
      builder: (context,widget)=>ResponsiveWrapper.builder(
          widget,
          maxWidth: 1980,
          minWidth: 1200,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ]),
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: WelcomePage(),

    );
  }
}

