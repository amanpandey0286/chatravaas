import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class socialmedia_button extends StatelessWidget {
  socialmedia_button(
      {required this.image, required this.onPressed, required this.title});

  final String image;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: HexColor('#fbf5f2'),
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
            onPressed: onPressed,
            minWidth: 150.0,
            height: 55.0,
            child: Row(
              children: [
                Image.asset(
                  image,
                  height: 35.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
