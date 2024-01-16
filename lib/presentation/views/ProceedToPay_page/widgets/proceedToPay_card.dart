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
                Text("Pay   \u{20B9}750",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                SizedBox(width: 20),
                Text('\u{20B9}700',
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


