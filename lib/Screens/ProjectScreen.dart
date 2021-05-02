import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karthick_portfolio/components/Navbar.dart';
import 'package:url_launcher/url_launcher.dart';
class ProjectScreen extends StatefulWidget {
  static const String id ="Project Screen";
  @override
  _ProjectScreenState createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

                          Text("Project.",
                            style: TextStyle(

                                fontSize: 30,
                                fontFamily: 'RobotoSlab',
                                color: Colors.redAccent,
                              fontWeight: FontWeight.w800
                            ),),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text("\"Emergency\" an ambulance booking app.",
                            style: TextStyle(

                                fontSize: 15.0,
                                fontFamily: 'RobotoSlab',
                                color: Colors.yellowAccent
                            ),),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text("Instant Booking with the nearest ambulance.",
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
                      height: 500,
                    )
                  ],
                ),
                Expanded(child: Container(
                  width: 400,
                  height: 700,
                  color: Color(0xFFF234052),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Container(

                            child: Image(
                              image: AssetImage('images/loginscreen.jpeg'),
                            ),
                            height: 300,
                            width: 300,
                          ),
                           Text("You can Sign in and Sign up to register to this app",
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),

                          ),

                        ],



                      ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(

                        child: Image(
                          image: AssetImage('images/UserandDriver.jpeg'),
                        ),
                        height: 300,
                        width: 300,
                      ),
                      Column(
                        children: [
                          Text("You can access as user or driver ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),),

                          SizedBox(
                            height: 20,
                          ),
                          Text("This app enables both user and drive simultaneously ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text("No need for separate app for user and driver ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ))
                        ],
                      ),

                    ],

                  )
                    ],
                  ),

                )),
                Expanded(child: Container(

                  width: 400,
                  height: 300,

                  color: Color(0xFFF234052),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Contact:",
                        style: TextStyle(

                            fontSize: 30,
                            fontFamily: 'RobotoSlab',
                            color: Colors.redAccent,
                            fontWeight: FontWeight.w800
                        ),),
                      SizedBox(
                        height: 15.0,
                      ),
                      GestureDetector(
                          onTap: ()async{
                            const url = "mailto:karthiprabha2907@gmail.com";
                            if(await canLaunch(url))
                              {
                                await launch(url);
                              }
                           else
                             {
                               print( 'Could not launch url');
                             }
                          },
                          child: Icon(
                            Icons.mail
                          )
                      )
                    ],
                  ),
                ))
              ]
          ),
        ),

    );
  }
}

