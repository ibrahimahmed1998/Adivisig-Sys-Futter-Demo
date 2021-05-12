import 'package:shop_app/filled_outline_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/chatstudent.dart';
import 'package:shop_app/screens/privileges/student_privileges/chat_student/Message_student_screen.dart';
import 'package:flutter/material.dart';


import 'package:shop_app/screens/privileges/student_privileges/chat_student/chatstudent.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessagesScreen(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}