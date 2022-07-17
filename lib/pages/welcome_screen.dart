import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

import 'admin_login.dart';
import 'hostller_login.dart';
import 'widget/header_widget.dart';


class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
                  height: 70.0,
                ),
                Text(
                  'Welcome',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 48.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Material(
                    elevation: 5.0,
                    color: HexColor('#ffc248'),
                    borderRadius: BorderRadius.circular(30.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => adminlogin()),
                        );
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: Text(
                        'Admin'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Material(
                    color: HexColor('#ffc248'),
                    borderRadius: BorderRadius.circular(30.0),
                    elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => hostllerlogin()),
                        );
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: Text(
                        'Hostller'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
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
