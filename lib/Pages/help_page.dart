// ignore_for_file: prefer_const_constructors
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:start_web_app_now/Pages/about_page.dart';
import 'package:start_web_app_now/Pages/profile_page.dart';
import 'package:start_web_app_now/widgets/Custom_Btn.dart';

import 'home_page.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => NameState();
}

class NameState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: sized_box_for_whitespace
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xff5756ef),
        Color(0xff7882ef),
        Color(0xff5756ef)
      ])),
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //the first Row
            navBar(),
            //the second Row

            // the third Row
            Padding(
              padding: const EdgeInsets.only(right: 30.0, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    FontAwesomeIcons.facebookF,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget navBar() {
    return Row(
      children: [
        GestureDetector(
          child: CustomBtn(
            Colors.white,
            'HOME',
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        GestureDetector(
          child: CustomBtn(
            Colors.white,
            'PROFILE',
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfilePage()));
          },
        ),
        GestureDetector(
          child: CustomBtn(
            Colors.white,
            'ABOUT',
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AboutPage()));
          },
        ),
        GestureDetector(
          child: CustomBtn(
            Colors.white,
            'HELP',
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HelpPage()));
          },
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.all(30.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text(
              "FreeLance Logo",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
        ),
      ],
    );
  }
}
