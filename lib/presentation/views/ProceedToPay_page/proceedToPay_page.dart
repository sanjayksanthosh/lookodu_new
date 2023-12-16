import 'package:flutter/material.dart';
import 'package:lookodu/presentation/views/ProceedToPay_page/widgets/proceedToPay_card.dart';

class ProceedToPayPage extends StatelessWidget {
  const ProceedToPayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Payment"),
        centerTitle: true,actions: [Text("Edit")],
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('DOSA EXPRESS'),
                  Text('Poovangal, Calicut'),
                ],
              ),
          Container(width: 150,height: 50,
            child: ElevatedButton(
              onPressed: () {
                debugPrint('ElevatedButton Clicked');
              },
              child: Text('\u{20B9}750',style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                side: BorderSide(color: Colors.white, width: 1),
              ),
            ),
          )
            ],
          ),
          ProceedToPayCard()
        ]),
      ),
    );
  }
}
