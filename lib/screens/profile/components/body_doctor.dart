import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/screens/privileges/privileges_doctor.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'profile_menu.dart';


class Bodydoctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(
            height: 115,
            width: 115,
            child: Stack(
              fit: StackFit.expand,
              // ignore: deprecated_member_use
              overflow: Overflow.visible,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/ASLOGO.png"),
                ),
                Positioned(
                  right: -16,
                  bottom: 0,
                  child: SizedBox(
                    height: 46,
                    width: 46,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(color: Colors.white),
                      ),
                      color: Color(0xFFF5F6F9),
                      onPressed: () {},
                      child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Text(
            "Hello, Doctor",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(25),
              color:  Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 30),
          Text(
              "Doctor Name: Mostafa Reda \nMahmoud",
            style : TextStyle (
                fontWeight: FontWeight.w500
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          Text(
              "Doctor Department: Mostafa Reda \nMahmoud",
            style : TextStyle (
                fontWeight: FontWeight.w500
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          Text(
              "Doctor ID: 498603486034",
            style : TextStyle (
                fontWeight: FontWeight.w500
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 150),
          ProfileMenu(
            text: "My privileges",
            icon: "assets/icons/Question mark.svg",
            press: () {Navigator.pushNamed(context, privilegesdoctor.routeName);},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {Navigator.pushNamed(context, SignInScreen.routeName);},
          ),
        ],
      ),
    );
  }
}
