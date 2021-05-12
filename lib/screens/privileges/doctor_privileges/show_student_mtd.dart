import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';




class showstudentmtd extends StatefulWidget{
  static String routeName = "/showstudentmtd";
  _showstudentmtd createState()=> _showstudentmtd();
}
class _showstudentmtd extends State<showstudentmtd>
{
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFFF3BB1C), Color(0xFFFF7643)],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text("Student midterm degrees",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color : Colors.white70,
          ),
        ),
      ),
      body:
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              Spacer(),
              Text("Student name: Mostafa Reda",
              style:new TextStyle(
                fontWeight: FontWeight.bold,

                  foreground: Paint()..shader = linearGradient
              ),

              ) ,

              Spacer(),
              DataTable(
          columns: [
            DataColumn(label: Text('Course')),
            DataColumn(label: Text('Degree')),
            DataColumn(label: Text('FDegree')),
          ],
          rows: [
            DataRow(cells:[ DataCell(Text('COMP401')),
                             DataCell(Text('15')),
              DataCell(Text('20')),


    ]),
            DataRow(cells:[ DataCell(Text('COMP402')),
              DataCell(Text('20')),
              DataCell(Text('25')),


            ]),
            DataRow(cells:[ DataCell(Text('COMP403')),
              DataCell(Text('8')),
              DataCell(Text('15')),


            ]),
            DataRow(cells:[ DataCell(Text('COMP404')),
              DataCell(Text('28')),
              DataCell(Text('28')),


            ]),
          ],
        ),
              Spacer(),

            ]
        )



    );
  }
}