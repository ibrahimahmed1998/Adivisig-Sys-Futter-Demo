import 'package:flutter/material.dart';
import 'package:shop_app/screens/privileges/admin_privileges/attendance_admin.dart';
import 'package:shop_app/screens/profile/components/profile_menu.dart';
import 'package:shop_app/screens/sign_in/sign_up/sign_up_screen.dart';

import '../../constants.dart';
import 'StudentName.dart';



class privilegesadmin extends StatefulWidget
{
  static String routeName = "/privilegesadmin";
  @override
  _privilegesadmin createState() => _privilegesadmin();
}
class _privilegesadmin extends State<privilegesadmin> {
  var constant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text("Admin privileges",
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
              text: "Add new student",
              icon: "assets/icons/Plus Icon.svg",
              press: () {Navigator.pushNamed(context, SignUpScreen.routeName);},
            ),
            ProfileMenu(
              text: "Update student final degree",
              icon: "assets/icons/Plus Icon.svg",
              press: () {constant=1;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => studentname(constant: constant),
                  ));},
            ),
            ProfileMenu(
              text: "Update student midterm degree",
              icon: "assets/icons/Plus Icon.svg",
              press: () {constant=2;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => studentname(constant: constant),
                  ));},
            ),

          ],
        ),
      ),



    );
  }
}