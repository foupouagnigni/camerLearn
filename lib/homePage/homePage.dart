import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:camerlearn/widget/navbar/navbar.dart';
import 'package:camerlearn/widget/SideBar/SideBar.dart';


class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
           decoration: const BoxDecoration(
            gradient:LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
              Color(0xFF8A2387),
              Color(0xFFE94057),
              Color(0xFFF27121),
              ]
              )
           ),
           child: Column(
            children: <Widget>[ 
              navbar(),

              
              Column(
               // children:[SideBar()],
              )
              
              ],

            
           ),
        ),
      ),

    );
  }
}

