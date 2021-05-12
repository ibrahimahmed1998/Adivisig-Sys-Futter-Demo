import 'package:flutter/material.dart';
import 'package:shop_app/screens/privileges/doctor_privileges/post_fq.dart';
import 'package:shop_app/screens/privileges/doctor_privileges/show_fq.dart';
import 'package:shop_app/screens/profile/components/profile_menu.dart';
import 'package:shop_app/screens/privileges/doctor_privileges/attendance_doctor.dart';
import 'package:shop_app/screens/privileges/doctor_privileges/chat_screen.dart';


import '../../constants.dart';
import 'StudentName.dart';

class privilegesdoctor extends StatefulWidget
{
  static String routeName = "/privilegesdoctor";
  @override
  _privilegesdoctor createState() => _privilegesdoctor();
}

class _privilegesdoctor extends State<privilegesdoctor>
{
  var constant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text("Doctor privileges",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color : Colors.white70,
          ),
        ),
      ),


      body:
      SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            SizedBox(height: 30),
            ProfileMenu(
              text: "Show student midterm degree",
              icon: "assets/icons/Plus Icon.svg",
              press: () {constant=3;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => studentname(constant: constant),
                  ));},
            ),
            ProfileMenu(
              text: "Show student academic record",
              icon: "assets/icons/Plus Icon.svg",
              press: () {constant=4;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => studentname(constant: constant),
                  ));},
            ),
            ProfileMenu(
              text: "Chat",
              icon: "assets/icons/Plus Icon.svg",
              press: () {Navigator.pushNamed(context, chatdoctor.routeName);},
            ),
            ProfileMenu(
              text: "Post a frequently question",
              icon: "assets/icons/Plus Icon.svg",
              press: () {Navigator.pushNamed(context, postfq.routeName);},
            ),
            ProfileMenu(
              text: "Show frequently questions",
              icon: "assets/icons/Plus Icon.svg",
              press: () {Navigator.pushNamed(context, showfq.routeName);},
            ),
            ProfileMenu(
              text: "Attendance",
              icon: "assets/icons/Plus Icon.svg",
              press: () {Navigator.pushNamed(context, attendancedoctor.routeName);},
            ),
          ],
        ),
      ),

    );
  }
}