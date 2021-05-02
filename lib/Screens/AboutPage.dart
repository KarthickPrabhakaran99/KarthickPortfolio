import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karthick_portfolio/components/Navbar.dart';

class QuotesPage extends StatefulWidget {
  static const String id = "About Page";
  @override
  _QuotesPageState createState() => _QuotesPageState();
}

class _QuotesPageState extends State<QuotesPage> {


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

                        Text("Quotes",
                          style: TextStyle(

                              fontSize: 30,
                              fontFamily: 'RobotoSlab',
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w800
                          ),),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text("We live in a society exquisitely dependent",
                          style: TextStyle(

                              fontSize: 15.0,
                              fontFamily: 'RobotoSlab',
                              color: Colors.yellowAccent
                          ),),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text("on science and technology,in which hardly anyone",
                          style: TextStyle(

                              fontSize: 15.0,
                              fontFamily: 'RobotoSlab',
                              color: Colors.yellowAccent
                          ),),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text("knows anything about science and technology.",
                          style: TextStyle(

                              fontSize: 15.0,
                              fontFamily: 'RobotoSlab',
                              color: Colors.yellowAccent,

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


