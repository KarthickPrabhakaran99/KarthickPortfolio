import 'package:flutter/material.dart';
import 'package:karthick_portfolio/Screens/ProjectScreen.dart';
import 'package:karthick_portfolio/Screens/AboutPage.dart';
import 'package:karthick_portfolio/Screens/WelcomePage.dart';

class NavigationBarWeb extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      color: Colors.black54,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(width: 100.0),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, WelcomePage.id);
            },
            child: Text(
              'Home',
              style: TextStyle(fontSize: 10.0),
            ),
          ),
          SizedBox(width: 100.0),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, QuotesPage.id);
            },
            child: Text(
              'Quotes',
              style: TextStyle(fontSize: 10.0),
            ),
          ),
          SizedBox(width: 100.0),

          GestureDetector(
            onTap: (){

              Navigator.pushNamed(context, ProjectScreen.id);
            },
            child: Text(
              'Project',
              style: TextStyle(fontSize: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}