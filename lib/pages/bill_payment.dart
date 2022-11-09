import 'package:flutter/material.dart';

class BillPayment extends StatefulWidget {
  const BillPayment({super.key});

  @override
  State<BillPayment> createState() => _BillPaymentState();
}

class _BillPaymentState extends State<BillPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 60,
        ),
        Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            IconButton(
              icon: const Icon(
                Icons.keyboard_arrow_left,
                size: 30,
              ),
              onPressed: (() {
                return Navigator.pop(context);
              }),
            ),
            const SizedBox(
              width: 76,
            ),
            const Text(
              'Electricity Bill',
              style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
            )
          ],
        ),
      ]),
    );
  }
}
