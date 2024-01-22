import 'package:flutter/material.dart';
import 'package:lookodu/presentation/views/enterAmount_Page/widgets/amount_Textfield.dart';
import 'package:lookodu/presentation/views/enterAmount_Page/widgets/paymentMethod_container.dart';

import '../../../utils/screen_uils.dart';
import 'package:get/get.dart';

import '../ProceedToPay_page/proceedToPay_page.dart';
import 'controllers/enterAmount_controller.dart';


class EnterAmountPage extends GetView<EnterAmountController> {
  EnterAmountPage({Key? key}) : super(key: key);
  final EnterAmountController amountController = Get.put(EnterAmountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Enter Amount"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: ResponsiveUtil.responsiveWidth(context, 100),
        child: Column(children: [
          Column(
            children: [
              Text("Dosa Express"),
              Text("Hilite Mall, Poovangal, Calicut"),
            ],
          ),
          SizedBox(
            height: ResponsiveUtil.responsiveHeight(context, 40),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Enter Amount"),
                  AmountTextField(controller: amountController.amountTextController),
                  Text("Select Payment Method"),
              // controller.obx(
              //       (state) =>Text(state!.length.toString())
              // ),
                  PaymentMethodContainer(),


                ],
              ),


            ),
          ),
          TextButton(
            onPressed: () {
              amountController.InitialOrderCreation().then((_) => Get.to(()=>ProceedToPayPage()));

            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white, // Background color
              minimumSize: Size(
                ResponsiveUtil.responsiveWidth(context, 90),
                ResponsiveUtil.responsiveHeight(context, 7),
              ), // Set minimum width and height
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0), // Rounded corners
              ),
            ),
            child: Text(
              'Continue',
              style: TextStyle(color: Colors.black), // Text color

            ),
          )
        ]),
      ),
    );
  }
}
