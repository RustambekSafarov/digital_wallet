import 'package:flutter/material.dart';

class BillPayment extends StatefulWidget {
  const BillPayment({super.key});

  @override
  State<BillPayment> createState() => _BillPaymentState();
}

class _BillPaymentState extends State<BillPayment> {
  String txt = '233.150';
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
        const SizedBox(
          height: 75,
        ),
        Text(
          txt,
          style: const TextStyle(
              fontSize: 50,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: Color(0xFF2C2C63)),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Details ',
              style: TextStyle(color: Colors.grey),
            ),
            Icon(Icons.keyboard_arrow_down_sharp)
          ],
        ),
        const SizedBox(
          height: 70,
        ),
        Expanded(
          child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            'Account Info',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: 26.9,
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text(
                        'Name',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      subtitle: Text(
                        'Samantha William',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      leading: Container(
                          width: 48,
                          height: 48,
                          child: Image.asset('img/account.png')),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Divider(),
                    SizedBox(
                      height: 8,
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text(
                        'Customer ID',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      subtitle: Text(
                        '0098 7485 1298',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      leading: Container(
                          width: 48,
                          height: 48,
                          child: Image.asset('img/doc.png')),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Divider(),
                    SizedBox(
                      height: 8,
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text(
                        'Month',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      subtitle: Text(
                        'September 2022',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      leading: Container(
                          width: 48,
                          height: 48,
                          child: Image.asset('img/doc.png')),
                    ),
                  ]),
                ),
              )),
        )
      ]),
    );
  }
}
