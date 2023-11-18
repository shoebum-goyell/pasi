import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pasi/resources/colors.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pasi/screens/homescreen.dart';
import 'package:pasi/screens/knowmores_screen.dart';

class AnalysisScreen extends StatefulWidget {
  const AnalysisScreen({super.key});

  @override
  State<AnalysisScreen> createState() => _AnalysisScreenState();
}

class _AnalysisScreenState extends State<AnalysisScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Analysis"),
        backgroundColor: kColorPrimary,
      ),
      bottomNavigationBar:
      Theme(
        data: Theme.of(context).copyWith(
      canvasColor: kColorPrimary,
    ),
    child: Container(
      decoration: const BoxDecoration(
      boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black,
            blurRadius: 1,
          )]),
    child:
      BottomNavigationBar(
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: kBackgroundColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          onTap: (value) {
            if(value == 0){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            }
            else if(value == 1){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const AnalysisScreen()),
              );
            }
            },
          items: [
            BottomNavigationBarItem(
              icon: Icon(FeatherIcons.home, size: 30),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(FeatherIcons.activity, size: 30),
              label: "Inbox",
            ),
            BottomNavigationBarItem(
              icon: Icon(FeatherIcons.user, size: 30),
              label: "Create Trip",
            ),
          ]))),
      backgroundColor: kBackgroundColor,
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Stack(
              children: [
                Image.asset('assets/metermax.png', height: 100,),
                Positioned(
                    top:35,
                    left: 80,
                    child: Text("60", style: TextStyle(fontSize: 30),)),
              ],
            ),
            SizedBox(height:4),
            Text("PASI Score", style: TextStyle(fontSize: 25),),
            SizedBox(height: 12,),
            Text("Psoriasis Detected", style: TextStyle(color: kColorDarkOrange,fontSize: 30),),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 150, child:
                  Text("Redness of erythema (0-4)", style: TextStyle(fontSize: 20),)),
                  Stack(
                    children: [
                      Image.asset('assets/metermax.png', height: 45,),
                      Positioned(
                          top:15,
                          left: 35,
                          child: Text("3.5", style: TextStyle(fontSize: 15),)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 200, child:
                  Text("Thickness of induration (0-4)", style: TextStyle(fontSize: 20),)),
                  Stack(
                    children: [
                      Image.asset('assets/metermin.png', height: 45,),
                      Positioned(
                          top:15,
                          left: 35,
                          child: Text("1.3", style: TextStyle(fontSize: 15),)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 200, child:
                  Text("Scaling of desquamation (0-4)", style: TextStyle(fontSize: 20),)),
                  Stack(
                    children: [
                      Image.asset('assets/metermax.png', height: 45,),
                      Positioned(
                          top:15,
                          left: 35,
                          child: Text("3.7", style: TextStyle(fontSize: 15),)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 200, child:
                  Text("Area Ratio (0-6)", style: TextStyle(fontSize: 20),)),
                  Stack(
                    children: [
                      Image.asset('assets/metermin.png', height: 45,),
                      Positioned(
                          top:15,
                          left: 35,
                          child: Text("0.7", style: TextStyle(fontSize: 15),)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8,),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const KnowMoreScreen()),
                  );
                },
                child:Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: kColorPrimary),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: Text(
                    "Know More",
                    style: TextStyle(
                      color: kColorPrimary,
                      fontSize: 20,
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
