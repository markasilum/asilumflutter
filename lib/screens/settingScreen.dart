import 'package:asilumflutter/widgets/sidebarWidget.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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
                        image: AssetImage("/images/addu-jacinto.jpg"),
                        fit: BoxFit.fitWidth,
                       alignment: Alignment.topCenter
                       
                      )
                    ),
                  )),
                Positioned(
                    bottom: 15,
                    left: 20,
                    child: Text(
                      "Settings",
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