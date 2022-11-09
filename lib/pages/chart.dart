import 'package:flutter/material.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({super.key});

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Internet data',
                style: TextStyle(fontSize: 23),
              )
            ],
          ),
          const SizedBox(
            height: 55,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 60,
            height: 90,
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 14,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('img/image4.png'),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Thomas Wise',
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        '0821 - 7654 - 3210',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 220, 210, 255),
                        borderRadius: BorderRadius.circular(13)),
                    child: const Icon(Icons.person, color: Color(0xFF230B34)),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 49,
          ),
          const Text(
            'Choose Package',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 55,
            height: 142,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 14,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: Image.asset('img/group4.png'),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Simple Package',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 64,
                      ),
                      Text(
                        'Rp 50.000',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      )
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width-86,
                    child: Divider()),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '14 GB Internet + 2 GB Streaming, Active Period 30 days',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
