import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karthick_portfolio/components/Navbar.dart';


class WelcomePage extends StatefulWidget {
  static const String id = "Welcome Page";
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(

            image: DecorationImage(

                image: NetworkImage('https://miro.medium.com/max/7086/1*dVBIlFJXd4798mDQ0wc6vQ.png'),),),
        child: ListView(
          children:[
          NavigationBarWeb(),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 400,
                  width:400,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,

                 children: [
                   Text("Hi ,I'm Karthick.",
                     style: TextStyle(
                       fontSize: 15.0,
                       color: Colors.yellow,
                       fontFamily: 'RobotoSlab'
                     ),
                   ),
                   SizedBox(
                     height: 15.0,
                   ),
                   Text("Web and App Developer.",
                   style: TextStyle(

                     fontSize: 30,
                       fontWeight: FontWeight.w800,
                       fontFamily: 'RobotoSlab',
                     color: Colors.redAccent
                   ),),
                   SizedBox(
                     height: 15.0,
                   ),
                   Text("Dev who hunt for knowledge.",
                   style: TextStyle(

                     fontSize: 15.0,
                       fontFamily: 'RobotoSlab',
                     color: Colors.yellowAccent
                   ),),
                   SizedBox(
                     height: 15.0,
                   ),
                   Text("Less mooody in real life.",
                     style: TextStyle(

                         fontSize: 15.0,
                         fontFamily: 'RobotoSlab',
                       color: Colors.yellowAccent
                     ),),


                 ],
               ),
                ),
SizedBox(
  width: 50,
)
              ],
            ),
          ]
        ),
      ),
    );
  }
}

