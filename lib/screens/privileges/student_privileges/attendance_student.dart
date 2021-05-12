import 'dart:async';
import 'dart:math';

import 'package:shop_app/components/form_error.dart';

import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';

import '../../../constants.dart';
import '../../../size_config.dart';


class attendancestudent extends StatelessWidget {
  static String routeName = "/attendancestudent";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool pressed = false;
  static const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();
  TextEditingController _passwordTextController = TextEditingController();
  String password;

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
  String m;
  _MyHomePageState()
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
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text("Attendance",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color : Colors.white70,
          ),
        ),
      ),
      body:

      Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30),

            Spacer(),

            Padding(
              padding: const EdgeInsets.all(20),
                child: buildPasswordFormField(),
            ),
            Spacer(),

            Padding(
              padding: const EdgeInsets.all(20),
              child : DefaultButton(
                text: "Submit",
                press :(){setState(() {
                  pressed = true;
                });}
              ),
            ),
            pressed ? Text(
              "Attendance has been registered",
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ) : SizedBox(),
            SizedBox(height: 50),
            Spacer(),

           /* (seconds >0)
                ? Text("")
                :Text(
              "Attendance has been registered",
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),*/
            Spacer(),
          ],
        ),
      ),

    );
  }
  TextFormField buildPasswordFormField() {
    return TextFormField(

      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter session password",
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
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
      controller: _passwordTextController,
    );
  }
}