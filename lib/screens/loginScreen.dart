import 'package:asilumflutter/screens/dashboardScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child: Container(
        padding: EdgeInsets.all(40),
        width: 450,
        height: 600,
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Container(
              width: screenSize.width * .15,
              height: screenSize.height * .15,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("/images/university-seal.png"))),
            ),
            SizedBox(height: 20),
            Text(
              "ATENEO DE DAVAO UNIVERSITY",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Container(
              child: Column(
                children: [
                  Text(
                    "Community Center",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Asset Management System",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            TextButton(
              onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardScreen()));
              },
              child: Container(
                
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.green[100]),
                child: Center(
            
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login with Google",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("/images/google.png")
                          )
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

             SizedBox(height: 10),

            TextButton(
              onPressed: (() {}),
              child: Container(
               
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.blue[100]),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login as Guest",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                       SizedBox(width: 15,),
                       Icon(Icons.people_alt_outlined, size: 40,)
                      // Container(
                      //   height: 50,
                      //   width: 50,
                      //   decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //       image: AssetImage("/images/google.png")
                      //     )
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
