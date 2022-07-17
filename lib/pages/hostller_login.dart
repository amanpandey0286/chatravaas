import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myhostelapp/commom/google_sign_in.dart';
import 'package:myhostelapp/commom/twitter_sign_in.dart';
import 'package:myhostelapp/pages/widget/header_widget.dart';
import 'package:provider/provider.dart';
import '../commom/Socialmedia_button.dart';
import '../commom/theme_helper.dart';
import 'forgot_password_page.dart';
import 'profile_page.dart';
import 'registration_page.dart';

class hostllerlogin extends StatefulWidget {
  const hostllerlogin({Key? key}) : super(key: key);

  @override
  _hostllerloginState createState() => _hostllerloginState();
}

class _hostllerloginState extends State<hostllerlogin> {
  double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: HeaderWidget(
                  _headerHeight, true, Icons.login), // common header widget
            ),
            SafeArea(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10), //the login form
                child: Column(
                  children: [
                    Text(
                      'Hi, Hosteller',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Signin into your account',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 30.0),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Container(
                            child: TextField(
                              onChanged: (value) {
                                email = value;
                              },
                              decoration: ThemeHelper().textInputDecoration(
                                  'Email ID', 'Enter your Email ID'),
                            ),
                            decoration:
                                ThemeHelper().inputBoxDecorationShaddow(),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            child: TextField(
                              obscureText: true,
                              onChanged: (value) {
                                password = value;
                              },
                              decoration: ThemeHelper().textInputDecoration(
                                  'Password', 'Enter your password'),
                            ),
                            decoration:
                                ThemeHelper().inputBoxDecorationShaddow(),
                          ),
                          SizedBox(height: 15.0),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ForgotPasswordPage()),
                                );
                              },
                              child: Text(
                                "Forgot your password?",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'OR',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Login with',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              socialmedia_button(
                                title: "Google",
                                image: 'images/google_logo.png',
                                onPressed: () {
                                  final provider =
                                      Provider.of<GoogleSignInProvider>(context,
                                          listen: false);
                                  provider.googleLogin();
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ProfilePage()));
                                },
                              ),
                              socialmedia_button(
                                title: "Twitter",
                                image: 'images/twitter.png',
                                onPressed: () {
                                  twitter_login();
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ProfilePage()));
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 15.0),
                          Container(
                            decoration:
                                ThemeHelper().buttonBoxDecoration(context),
                            child: ElevatedButton(
                              style: ThemeHelper().buttonStyle(),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                child: Text(
                                  'Sign In'.toUpperCase(),
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              onPressed: () async {
                                try {
                                  final newUser =
                                      await _auth.signInWithEmailAndPassword(
                                          email: email, password: password);
                                  if (newUser != null) {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProfilePage()));
                                  }
                                } catch (e) {
                                  print(e);
                                }
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            //child: Text('Don\'t have an account? Create'),
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "Don\'t have an account? "),
                              TextSpan(
                                text: 'Create',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegistrationPage()));
                                  },
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).accentColor),
                              ),
                            ])),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
