import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentFinishPage extends StatelessWidget {
  const PaymentFinishPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Sucess!!"),
                Image.asset("assets/images/checkmark.png"),
                Text('You have successfully sent!'),
                Text('700',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900)),
                Stack

                  (
                  children: [
                    Container(
                      width: Get.width,
                      height: Get.height / 5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Component 6.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      margin: EdgeInsets.all(20),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(vertical: 50.0),
                        child: Column(children: [
                          Text('Congrats !! You won',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),),
                          Text('300 ODU COINS',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900)),
                        ]),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          child: const Center(
                              child: Text(
                            "Check ODU Store",
                            style: TextStyle(color: Color(0xff5D6A7E),fontSize: 18,fontWeight: FontWeight.bold),
                          )),
                          decoration: BoxDecoration(
                              color: Color(0xffEEE277),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(25))),
                          width: Get.width,
                          margin: EdgeInsets.all(20),
                          height: Get.height / 15,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(20)),
                  height: Get.height / 4,
                  width: Get.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Transaction number"),
                            Text("#PAY2023ED101")
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Payment Account"),
                            Text("Corporate Account"),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Time"),
                            Text("09:41 pm"),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Date"),
                            Text("17 Feb, 2023"),
                          ])
                    ],
                  ),
                ),
                Container(margin: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(13),color: Color(0xff333333)),
                        width: Get.width / 1.4,
                        child: Center(child: Text('Back to Home')),
                      ),
                      Container(padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
                        child: Icon(Icons.mobile_screen_share),
                      )
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
