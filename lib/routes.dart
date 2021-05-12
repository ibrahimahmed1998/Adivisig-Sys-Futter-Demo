import 'package:flutter/widgets.dart';

import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';

import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/screens/privileges/StudentName.dart';
import 'package:shop_app/screens/privileges/admin_privileges/update_fd.dart';
import 'package:shop_app/screens/privileges/admin_privileges/update_mtd.dart';
import 'package:shop_app/screens/privileges/doctor_privileges/chat_screen.dart';
import 'package:shop_app/screens/privileges/doctor_privileges/post_fq.dart';
import 'package:shop_app/screens/privileges/doctor_privileges/show_fq.dart';
import 'package:shop_app/screens/privileges/doctor_privileges/show_student_ar.dart';
import 'package:shop_app/screens/privileges/doctor_privileges/show_student_mtd.dart';
import 'package:shop_app/screens/privileges/privileges_admin.dart';
import 'package:shop_app/screens/privileges/privileges_doctor.dart';
import 'package:shop_app/screens/privileges/privileges_student.dart';
import 'package:shop_app/screens/privileges/student_privileges/attendance_student.dart';
import 'package:shop_app/screens/privileges/student_privileges/chat_student/chat_students.dart';
import 'package:shop_app/screens/privileges/student_privileges/course_reg.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/sign_in/sign_up/sign_up_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/screens/privileges/doctor_privileges/attendance_doctor.dart';



// We use name route
// All our routes will be available here
var constant;
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName:(context)=>SignUpScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  privilegesadmin.routeName : (context) => privilegesadmin(),
  privilegesdoctor.routeName : (context) => privilegesdoctor(),
  privilegesstudent.routeName : (context) => privilegesstudent(),
  RegistPage.routeName : (context) => RegistPage(),
  attendancedoctor.routeName : (context) => attendancedoctor(),
  attendancestudent.routeName : (context) => attendancestudent(),
  chatdoctor.routeName : (context) => chatdoctor(),
  chatstudent.routeName : (context) => chatstudent(),
  studentname.routeName : (context) => studentname(),
  updatemtd.routeName : (context) => updatemtd(),
  updatefd.routeName : (context) => updatefd(),
  showfq.routeName : (context) => showfq(),
  postfq.routeName : (context) => postfq(),
  showstudentmtd.routeName : (context) => showstudentmtd(),
  showstudentar.routeName : (context) => showstudentar(),

};
