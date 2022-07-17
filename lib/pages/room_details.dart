import 'package:flutter/material.dart';
import 'package:myhostelapp/pages/hostller_login.dart';
import 'package:myhostelapp/pages/admin_login.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:myhostelapp/pages/profile_page.dart';
import 'package:myhostelapp/pages/widget/header_widget.dart';

import '../commom/theme_helper.dart';

class RoomDetails extends StatefulWidget {
  @override
  _RoomDetailsState createState() => _RoomDetailsState();
}

class _RoomDetailsState extends State<RoomDetails> {
  double _headerHeight = 250;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Container(
            height: _headerHeight,
            child: HeaderWidget(
                _headerHeight, true, Icons.login), // common header widget
          ),
          SizedBox(
            height: 18.0,
          ),
          Text(
            'Room Details',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            height: 18.0,
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75))
                  ],
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            "Block No :",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Block A",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75))
                  ],
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            "About Room :",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "2nd Floor, 3 Beded, 587 ",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
