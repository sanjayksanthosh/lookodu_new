import 'package:flutter/material.dart';

import '../../../../utils/contants/app_colors.dart';
import '../../../../utils/screen_uils.dart';

class PaymentMethodContainer extends StatelessWidget {
  const PaymentMethodContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: ResponsiveUtil.responsiveWidth(context, 90),
      height: ResponsiveUtil.responsiveHeight(context, 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.textFieldBorderColor, // Border color
          width: 1.0, // Border width
        ),
        borderRadius:
        BorderRadius.circular(12.0), // Curved corners
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1506097425191-7ad538b29cef?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
                  borderRadius:
                  BorderRadius.circular(10), //<-- SEE HERE
                ),
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  Text('Corporate Account'),
                  Text('**** **** **** 0001'),
                ],
              ),
            ],
          ),

          Text(
            'Change',
            style: TextStyle(color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}
