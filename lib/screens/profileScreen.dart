import 'dart:ui';

import 'package:asilumflutter/widgets/sidebarWidget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SideBar(),
          Card(
            margin: EdgeInsets.all(30),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              height: screenSize.height*.3,
              width: screenSize.width*.79,
              child: Stack(children: [
                Positioned(
                  child: 
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("/images/addu-students.jpg"),
                        fit: BoxFit.fitWidth,
                       alignment: Alignment.topCenter
                       
                      )
                    ),
                    child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                      
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.0)),
                      ),
                    ),
                  ),
                  )),
                Positioned(
                    bottom: 15,
                    left: 20,
                    child: Text(
                      "Profile",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          ),
                    ))
              ]),
            ),
          ),
        ],
      ),
    );
  }
}