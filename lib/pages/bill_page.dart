import 'package:flutter/material.dart';

import 'package:myhostelapp/pages/widget/header_widget.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../commom/theme_helper.dart';

class BillPage extends StatefulWidget {
  @override
  _BillPageState createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  double _headerHeight = 250;
  String feesFine = "1000";
  String feesHostel = "30000";
  var _razorpay = Razorpay();

  @override
  void initState() {
    // TODO: implement initState
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
    print('Payment Done');
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
    print('Payment Failed');
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet is selected
    print('Payment ');
  }

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
            'Bill Payment',
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
              padding: EdgeInsets.symmetric(vertical: 30.0),
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
                            "Hostel Fees",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "$feesHostel",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Container(
                                decoration:
                                    ThemeHelper().buttonBoxDecoration(context),
                                child: ElevatedButton(
                                  style: ThemeHelper().buttonStyle(),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(40, 10, 40, 10),
                                    child: Text(
                                      'Pay'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  onPressed: () {
                                    var options = {
                                      'key': "rzp_test_oYJFTLQ0iUsiRx",
                                      'amount': feesHostel +
                                          '00', //in the smallest currency sub-unit.
                                      'name': 'VIT bhopal',
                                      'description': 'Hostel fees',
                                      'timeout': 300, // in seconds
                                      'prefill': {'contact': '', 'email': ''}
                                    };
                                    _razorpay.open(options);
                                  },
                                  //After successful login we will be redirect to profile page.
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
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
                            "Fine Charges",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "$feesFine",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Container(
                                decoration:
                                    ThemeHelper().buttonBoxDecoration(context),
                                child: ElevatedButton(
                                  style: ThemeHelper().buttonStyle(),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(40, 10, 40, 10),
                                    child: Text(
                                      'Pay'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  onPressed: () {
                                    //After successful login we will be redirect to profile page.
                                    var options = {
                                      'key': "rzp_test_oYJFTLQ0iUsiRx",
                                      'amount': feesFine +
                                          '00', //in the smallest currency sub-unit.
                                      'name': 'VIT bhopal',
                                      'description': 'Hostel fees',
                                      'timeout': 300, // in seconds
                                      'prefill': {'contact': '', 'email': ''}
                                    };
                                    _razorpay.open(options);
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _razorpay.clear(); // Removes all listeners
    super.dispose();
  }
}
