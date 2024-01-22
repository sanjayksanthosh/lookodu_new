import 'package:flutter/material.dart';

import '../../../../utils/contants/app_colors.dart';
import '../../../../utils/screen_uils.dart';
import '../controllers/enterAmount_controller.dart';

class AmountTextField extends StatelessWidget {
  final TextEditingController controller;
   AmountTextField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          controller: controller,
          style: TextStyle(fontSize: 28),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            prefix: Text(
              '₹', // Rupee symbol
              style: TextStyle(
                // Text color
                fontSize: 28.0, // Font size
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
                horizontal:
                ResponsiveUtil.responsiveWidth(context, 6),
                vertical:
                ResponsiveUtil.responsiveHeight(context, 4)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: AppColors.actiiveTextFieldBorderColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: AppColors.textFieldBorderColor,
              ),
            ),
          ),
        ),
        Positioned(
          left: 10,
          top: 10,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              'Amount',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Positioned(
          right: 20,
          bottom: 20,
          child: Container(
            padding: EdgeInsets.all(7.0),
            decoration: BoxDecoration(
              color: Color(0xFF1E2848), // Color #1E2848
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              'IND >',
              style: TextStyle(
                color: Color(0xFF83899B), // Text color
                fontSize: 16.0, // Font size
              ),
            ),
          ),
        ),
      ],
    );
  }
}
