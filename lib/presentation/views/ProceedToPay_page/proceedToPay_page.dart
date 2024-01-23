import 'package:flutter/material.dart';
import 'package:lookodu/presentation/views/ProceedToPay_page/widgets/proceedToPay_card.dart';
import 'package:get/get.dart';
import 'package:lookodu/presentation/views/ProceedToPay_page/widgets/proceedToPay_sheet.dart';

import '../enterAmount_Page/controllers/enterAmount_controller.dart';
import '../finish_Page/payment_finish_page.dart';
import 'controllers/proceedToPay_controller.dart';

class ProceedToPayPage extends GetView<ProceedToPayController> {
   ProceedToPayPage({Key? key}) : super(key: key);
  final ProceedToPayController controller = Get.put(ProceedToPayController());
   final EnterAmountController amountController = Get.put(EnterAmountController());


  @override
  Widget build(BuildContext context) {
    // void _showBottomSheet(BuildContext context) {
    //   showModalBottomSheet(
    //     context: context,
    //     builder: (BuildContext builderContext) {
    //       return Container(
    //         height: 200.0,
    //         color: Colors.white,
    //         child: Column(children: [
    //           Row(children: [Text('Original Amount',style: TextStyle(color: Colors.black),)],)
    //         ],)
    //       );
    //     },
    //   );
    // }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Payment"),
        centerTitle: true,actions: [Text("Edit")],
      ),

      body:
    Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('DOSA EXPRESS'),
                    Text('Poovangal, Calicut'),
                  ],
                ),
            Container(width: 150,height: 50,
              child:
               ElevatedButton(
                  onPressed: () {
                    debugPrint('ElevatedButton Clicked');
                    // Get.to(PaymentFinishPage());
                    // _showBottomSheet(context);
                  },
                  child: Text("\u{20B9}"+amountController.amountTextController.text,style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    side: BorderSide(color: Colors.white, width: 1),
                  ),

           ),
            )
              ],
            ),
          ),
          ProceedToPayCard(),
          ProceedToPayBottomSheet(),
        ]),
    );
  }
}
