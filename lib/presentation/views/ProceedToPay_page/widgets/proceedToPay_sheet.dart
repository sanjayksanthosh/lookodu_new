import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/screen_uils.dart';
import '../../finish_Page/payment_finish_page.dart';
import '../controllers/proceedToPay_controller.dart';

class ProceedToPayBottomSheet extends StatelessWidget {
   ProceedToPayBottomSheet({Key? key }) : super(key: key);
   final ProceedToPayController controller = Get.put(ProceedToPayController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      height: 300,
      width: ScreenUtil.screenWidth(context),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Original Amount', style: TextStyle(color: Colors.black)),
            Text('750.00', style: TextStyle(color: Colors.black)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('ODU Discount', style: TextStyle(color: Colors.black)),
            Text('`50.00', style: TextStyle(color: Colors.black)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Pay with', style: TextStyle(color: Colors.black)),
            Text('Corporate Account', style: TextStyle(color: Colors.black)),
          ],
        ),
        SizedBox(height: 20,),
        ElevatedButton(
          onPressed: () {
            controller.orderCreation().then((value) =>Get.to(() => PaymentFinishPage())
            );

          },
          child: Text('Pay 700',style: TextStyle(color: Colors.white),),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 120, vertical: 10),
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        )
      ]),
    );
  }
}
