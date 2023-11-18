import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pasi/resources/colors.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pasi/screens/analysis_screen.dart';
import 'package:pasi/screens/homescreen.dart';

class KnowMoreScreen extends StatefulWidget {
  const KnowMoreScreen({super.key});

  @override
  State<KnowMoreScreen> createState() => _KnowMoreScreenState();
}

class _KnowMoreScreenState extends State<KnowMoreScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Know More"),
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: kColorPrimary,
                    ),
                  ),
                  child: Column(
                    children: [
                      Text("Redness of erythema (0-4)", style: TextStyle(fontSize: 20),),
                      SizedBox(height: 10,),
                      Text("The redness of erythema refers to the intensity of red patches on the skin, with a scale ranging from 0 (no redness) to 4 (intense redness). A higher score indicates more severe inflammation and contributes to the overall assessment of psoriasis severity.",
                        style: TextStyle(fontSize: 14),),

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
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: kColorPrimary,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text("Thickness of induration (0-4)", style: TextStyle(fontSize: 20),),
                        SizedBox(height: 10,),
                        Text("Induration measures the thickness of plaques or lesions on the skin, ranging from 0 (no thickness) to 4 (severe thickness). A greater thickness score signifies more extensive and pronounced psoriatic lesions, offering insight into the disease's impact on skin texture and structure.",
                          style: TextStyle(fontSize: 14),),
                        SizedBox(height: 10,),
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
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: kColorPrimary,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text("Scaling of desquamation (0-4)", style: TextStyle(fontSize: 20),),
                        SizedBox(height: 10,),
                        Text("Desquamation assesses the extent of flaking or scaling of the skin, with a scale from 0 (no scaling) to 4 (intense scaling). Increased scaling indicates a higher level of skin shedding, highlighting the severity of the psoriatic condition and its impact on the skin's surface.",
                          style: TextStyle(fontSize: 14),),
                        SizedBox(height: 10,),
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
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: kColorPrimary,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text("Area Ratio (0-6)", style: TextStyle(fontSize: 20),),
                        SizedBox(height: 10,),
                        Text("The area ratio accounts for the percentage of affected body surface area, ranging from 0 (no involvement) to 6 (extensive involvement). A higher score reflects a larger affected area, providing a comprehensive measure of the overall disease burden on the skin.",
                          style: TextStyle(fontSize: 14),),
                        SizedBox(height: 10,),
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
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
