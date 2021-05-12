import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';


class showfq extends StatelessWidget {
  static String routeName = "/showfq";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text("Show frequently questions",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white70,
          ),
        ),
      ),

    body : ListView.builder(

      itemBuilder: (context, index){
        return Card(
          child : Padding(
            padding: const EdgeInsets.only(top:32.0 , bottom:32,left:16.0,right:16.0),

            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children : <Widget>[
              ListTile(
                title: Text('Question',
                  style: TextStyle(
                      fontSize:22,
                      fontWeight : FontWeight.bold
                  ),
                ),
                subtitle: Text('Answer',
                  style: TextStyle(
                    color:Colors.grey.shade600,
                  ),),
                trailing: Text("Doctor x"),

              ),

            ],
          ),
        ),
        );
      },
    )
    );
  }
}