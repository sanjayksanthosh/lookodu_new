import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/screen_uils.dart';
import '../../enterAmount_Page/controllers/enterAmount_controller.dart';

class ProceedToPayCard extends StatelessWidget {
  const ProceedToPayCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final EnterAmountController amountController = Get.put(EnterAmountController());

    return Stack(children: [
      Container(
        margin: EdgeInsets.all(40),
        height: ResponsiveUtil.responsiveHeight(context, 35),
        width: ResponsiveUtil.responsiveWidth(context, 90),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/Group.png'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Congrats !! you save  ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            Text("50 with ODU savings",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Text("Pay   \u{20B9}"+amountController.amountTextController.text,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  Positioned(bottom: 15,right:0,child: Container(height: 2,width: 50,color: Colors.black87,))
                  ],
                ),
                SizedBox(width: 20),
                Text('\u{20B9}'+amountController.amountTextController.text,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
      Center(
          child: Image.asset(
        "assets/images/bulb.png",
        fit: BoxFit.cover,
        width: 100,
      )),
      Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Container(
          margin: EdgeInsets.all(40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          height: 80,
          width: ResponsiveUtil.responsiveWidth(context, 80),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [Image.asset('assets/images/Group 5.png',fit: BoxFit.fill,width: 40,),
                SizedBox(width: 10,),
                Column(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Congrats..Get your free coins and",style: TextStyle(color: Colors.black)),
                    Text(" redeem it for gifts from ODU STORE",style: TextStyle(color: Colors.black)),

                  ],
                ),
              ],
            ),
          ),
        ),
      )
    ]);
  }
}


