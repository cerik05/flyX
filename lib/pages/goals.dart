import 'package:flutter/material.dart';
//import 'package:uniapp/models/global.dart';
//import 'package:uniapp/models/technician.dart';

class GoalsPage extends StatefulWidget {
  @override
  _GoalsPageState createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x001f2227),
      body: Stack(children: <Widget>[
              Container(
            width: 428.0,
            height: 112.0,
            margin: EdgeInsets.only(top: 760),
            decoration: BoxDecoration(
              color: const Color(0xff484b52),
            ),
          ),
          Container(
          margin: EdgeInsets.only(top: 260), //PUT TEXT todo
          child: Row(
            children: <Widget>[
              Text(
                "     Go Premium",
                style: TextStyle(
                    fontFamily: 'Gotham',
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.grey[300]),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 320), //PUT TEXT todo
          child: Row(
            children: <Widget>[
              Text(
                "     No commitment. Cancel anytime.",
                style: TextStyle(
                    fontFamily: 'Gotham',
                    fontSize: 24,
                    color: Colors.grey[300]),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 400), //PUT TEXT todo
          child: Row(
            children: <Widget>[
              Text(
                "            COMING SOON            ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  backgroundColor: const Color(0xFFCC6958),
                    fontFamily: 'Gotham',
                    fontSize: 32,
                    color: Colors.grey[300]),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
