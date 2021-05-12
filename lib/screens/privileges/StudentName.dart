import 'dart:async';
import 'dart:math';

import 'package:shop_app/components/form_error.dart';

import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/privileges/admin_privileges/update_fd.dart';
import 'package:shop_app/screens/privileges/admin_privileges/update_mtd.dart';

import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/privileges/doctor_privileges/show_student_ar.dart';
import 'package:shop_app/screens/privileges/doctor_privileges/show_student_mtd.dart';
import 'package:shop_app/size_config.dart';


/*class studentname extends StatelessWidget {
  static String routeName = "/studentname";
 var constant;
  studentname({this.constant}) ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}*/


class studentname extends StatefulWidget {
  static String routeName = "/studentname";

  var constant;
  studentname({this.constant});

  @override
  _MyHomePageState createState() => _MyHomePageState(constant);
}

class _MyHomePageState extends State<studentname> {
  static const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();
  TextEditingController _passwordTextController = TextEditingController();
  String password;

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
  String m;
  var constant;
  _MyHomePageState(this.constant)
  { m=getRandomString(5);}
  //int _counter = 10;
  int seconds = 0;
  int minutes = 10;
  int hours = 0;
  Timer _timer;
  bool isEnabled = true ;


  void _startTimer() {


    isEnabled = false;


    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) => setState(
            () {
          if (minutes == 0 && hours == 0 && seconds == 0) {
            timer.cancel();
          } else {
            seconds = seconds - 1;
            if (seconds < 0) {
              minutes -= 1;
              seconds = 59;
              if (minutes < 0) {
                hours -= 1;
                minutes = 59;
              }
            }
          }
        },
      ),
    );


  }

  @override
  Widget build(BuildContext context) {

    if (constant == 1) {
      final _formKey = GlobalKey<FormState>();
      return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          centerTitle: true,
          title: Text("Student information",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          ),
        ),
        body:

        Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: getProportionateScreenHeight(60)),

              Padding(
                padding: const EdgeInsets.all(20),
                child: buildIDFormField(),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Padding(
                padding: const EdgeInsets.all(20),
                child: buildYearFormField(),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Padding(
                padding: const EdgeInsets.all(20),
                child: buildSemesterFormField(),
              ),
              SizedBox(height: getProportionateScreenHeight(60)),

              Padding(
                padding: const EdgeInsets.all(20),
                child: DefaultButton(
                    text: "Continue",
                    press: () {Navigator.pushNamed(context, updatemtd.routeName);}
                ),
              ),
              SizedBox(height: 50),
              Spacer(),


            ],
          ),
        ),

      );
    }
    else if (constant == 2) {
      final _formKey = GlobalKey<FormState>();
      return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          centerTitle: true,
          title: Text("Student information",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          ),
        ),
        body:

        Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: getProportionateScreenHeight(20)),

              Padding(
                padding: const EdgeInsets.all(20),
                child: buildIDFormField(),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Padding(
                padding: const EdgeInsets.all(20),
                child: buildYearFormField(),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Padding(
                padding: const EdgeInsets.all(20),
                child: buildSemesterFormField(),
              ),
              Spacer(),

              Padding(
                padding: const EdgeInsets.all(20),
                child: DefaultButton(
                  text: "Continue",
                  press: () {Navigator.pushNamed(context, updatemtd.routeName);}
                ),
              ),
              SizedBox(height: 50),
              Spacer(),


            ],
          ),
        ),

      );
    }
    else if (constant == 3) {
      final _formKey = GlobalKey<FormState>();
      return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          centerTitle: true,
          title: Text("Student information",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          ),
        ),
        body:

        Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: getProportionateScreenHeight(20)),

              Padding(
                padding: const EdgeInsets.all(20),
                child: buildNameFormField(),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Padding(
                padding: const EdgeInsets.all(20),
                child: buildYearFormField(),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Padding(
                padding: const EdgeInsets.all(20),
                child: buildSemesterFormField(),
              ),
              Spacer(),

              Padding(
                padding: const EdgeInsets.all(20),
                child: DefaultButton(
                    text: "Continue",
                    press: () {
                      Navigator.pushNamed(context, showstudentmtd.routeName);
                    }
                ),
              ),
              SizedBox(height: 50),
              Spacer(),


            ],
          ),
        ),


      );
    }
    else if (constant == 4) {
      final _formKey = GlobalKey<FormState>();
      return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          centerTitle: true,
          title: Text("Student information",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          ),
        ),
        body:

        Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: getProportionateScreenHeight(20)),

              Padding(
                padding: const EdgeInsets.all(20),
                child: buildNameFormField(),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Padding(
                padding: const EdgeInsets.all(20),
                child: buildYearFormField(),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Padding(
                padding: const EdgeInsets.all(20),
                child: buildSemesterFormField(),
              ),
              Spacer(),

              Padding(
                padding: const EdgeInsets.all(20),
                child: DefaultButton(
                    text: "Continue",
                    press: () {
                      Navigator.pushNamed(context, showstudentar.routeName);
                    }
                ),
              ),
              SizedBox(height: 50),
              Spacer(),


            ],
          ),
        ),


      );
    }
  }
  TextFormField buildIDFormField() {
    return TextFormField(

      decoration: InputDecoration(
        labelText: "ID",
        hintText: "Enter student ID",
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
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }
  TextFormField buildSemesterFormField() {
    return TextFormField(

      decoration: InputDecoration(
        labelText: "Semester",
        hintText: "Enter student semester",
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
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }
  TextFormField buildYearFormField() {
    return TextFormField(

      decoration: InputDecoration(
        labelText: "Year",
        hintText: "Enter student year",
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
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }
  TextFormField buildNameFormField() {
    return TextFormField(

      decoration: InputDecoration(
        labelText: "Name",
        hintText: "Enter student name",
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
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }
}