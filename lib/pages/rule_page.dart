import 'package:flutter/material.dart';
import 'package:myhostelapp/pages/widget/header_widget.dart';

class RulePage extends StatefulWidget {
  @override
  _RulePageState createState() => _RulePageState();
}

class _RulePageState extends State<RulePage> {
  double _headerHeight = 250;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: _headerHeight,
            child: HeaderWidget(
                _headerHeight, true, Icons.login), // common header widget
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 34.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Rules & Regulation',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 37.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  '1) In-time: 7.30 pm on all days for all students. Attendance will be taken after the in-time every night. Every student shall give attendance scrupulously.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  '2) Any physical/mental harassment including ragging, quarreling, using abusive language and violent behaviour is prohibited.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  '3) Anyone causing damage to the hostel property will be penalized suitably.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  '4) If a student is going to unavailable in the night he/she should obtain proper permission before leaving the hostel.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  '5) Keeping or drinking liquor in the hostel room or entering the campus or hostel intoxicated is strictly prohibited.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  '6) Students should stay only in the room allotted to them. Staying in others room is not permitted.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  '7) No student shall stay back in the hostel or any working day unless he/she is advised by the doctor under such health condition of such student.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
