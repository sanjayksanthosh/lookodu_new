import 'package:flutter/material.dart';
import 'package:lookodu/utils/screen_uils.dart';

class ProceedToPayCard extends StatelessWidget {
  const ProceedToPayCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.all(40),
        height: ResponsiveUtil.responsiveHeight(context, 40),
        width: ResponsiveUtil.responsiveWidth(context, 90),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/Group.png'))),
      ),
      Positioned(
          left: ResponsiveUtil.responsiveWidth(context, 38),
          child: Image.asset("assets/images/bulb.png",fit: BoxFit.cover,width: 100,)),
      Column(
        children: [
          Text("Congrats !! you save  "),
          Text("50 with ODU savings"),
          Text("Pay   `750  `700"),
        ],
      ),

    ]);
  }
}
