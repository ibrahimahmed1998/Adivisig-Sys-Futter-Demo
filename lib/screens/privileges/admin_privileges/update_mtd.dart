import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/privileges/admin_privileges/attendance_admin.dart';
import 'package:shop_app/screens/profile/components/profile_menu.dart';
import 'package:shop_app/screens/sign_in/sign_up/sign_up_screen.dart';

import 'package:shop_app/constants.dart';

import '../../../size_config.dart';

class updatemtd extends StatefulWidget{
  static String routeName = "/updatemtd";
  _updatemtd createState()=> _updatemtd();
}

class _updatemtd extends State<updatemtd>
{
  bool pressed = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text("Update midterm degree",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color : Colors.white70,
          ),
        ),
      ),
      body:

      Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: getProportionateScreenHeight(20)),

            Padding(
              padding: const EdgeInsets.all(20),
              child: buildCourseFormField(),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Padding(
              padding: const EdgeInsets.all(20),
              child: buildDegreeFormField(),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),

            Padding(
              padding: const EdgeInsets.all(20),
              child: DefaultButton(
                  text: "Continue",
                  press:() {Navigator.pushNamed(context, updatemtd.routeName);}
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: DefaultButton(
                  text: "Submit",
                  press:() {setState(() {
                    pressed = true;
                  });}
              ),
            ),
            pressed ? Text(
              "Degrees submitted",
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ) : SizedBox(),


          ],
        ),
      ),

    );
  }
  TextFormField buildCourseFormField() {
    return TextFormField(

      decoration: InputDecoration(
        labelText: "Course",
        hintText: "Enter course code",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
            gapPadding: 10
        ),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
            gapPadding: 10
        ),
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Parcel.svg"),
      ),
    );
  }
  TextFormField buildDegreeFormField() {
    return TextFormField(

      decoration: InputDecoration(
        labelText: "Degree",
        hintText: "Enter student degree",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
            gapPadding: 10
        ),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
            gapPadding: 10
        ),
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Parcel.svg"),
      ),
    );
  }
}