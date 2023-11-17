import 'package:flutter/material.dart';
import 'package:pasi/resources/colors.dart';
import 'package:feather_icons/feather_icons.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                    ),
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
           ),
            SizedBox(
              height: 18,
            ),
            GestureDetector(
              onTap: () {},
              child:Container(
                decoration: BoxDecoration(
                  color: kColorPrimary,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 70),
                child: Text(
                  "Upload Image",
                  style: TextStyle(
                    color: kBackgroundColor,
                    fontSize: 20,
                  ),
                ),
              )
            ),
            SizedBox(height: 18,),
            GestureDetector(
                onTap: () {},
                child:Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: kColorPrimary),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 55),
                  child: Text(
                    "Calculate and Analyse",
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
