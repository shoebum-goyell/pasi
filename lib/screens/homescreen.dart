import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pasi/resources/colors.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pasi/resources/styles.dart';
import 'package:pasi/screens/analysis_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  File? _image;

  bool loading = false;

  Future getImage() async {
    try{
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imagetemp = File(image.path);
      setState(() {
        _image = imagetemp;
      });
    }
    on PlatformException catch (e) {
      print("Failed to take image");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          currentIndex: 0,
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
      body: loading? Center(child: CircularProgressIndicator(color: kColorPrimary,)) : Align(
        alignment: Alignment.topCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60,),
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        Image(image: AssetImage('assets/pasihome.png'), height: 240,),
                      ],
                    )),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'PASI',
                    style: kFontPasi
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
           Container(height: 230, width: 280,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: kColorPrimary,
                      borderRadius: BorderRadius.circular(16),
                    ),
             child: _image!=null?
             ClipRRect(
                borderRadius: BorderRadius.circular(16),
                 child: Image.file(_image!, fit: BoxFit.fill,))
                 : null
           ),
            SizedBox(
              height: 18,
            ),
            GestureDetector(
              onTap: () {
                getImage();
              },
              child:Container(
                decoration: BoxDecoration(
                  color: kColorPrimary,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 70),
                child: Text(
                  "Upload Image",
                  style: kFontButtonLight
                ),
              )
            ),
            SizedBox(height: 18,),
            GestureDetector(
                onTap: () {
                  setState(() {
                    loading = true;
                  });
                  Duration duration = Duration(seconds: 2);
                  Future.delayed(duration, (){
                    setState(() {
                      loading = false;
                    });
                  }).then((value) => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AnalysisScreen()),
                  ));
                },
                child:Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: kColorPrimary),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 55),
                  child: Text(
                    "Calculate and Analyse",
                    style: kFontButtonDark
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
