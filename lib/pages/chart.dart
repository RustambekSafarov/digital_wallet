import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

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
          InfoCard(
            trailing: 'Rp 50.000',
            img: 'img/group4.png',
            title: 'Simple Package',
            subtitle: '14 GB Internet + 2 GB Streaming, Active Period 30 days',
          ),
          const SizedBox(
            height: 15,
          ),
          InfoCard(
            trailing: 'Rp 50.000',
            title: 'Simple Package',
            img: 'img/group5.png',
            subtitle: '14 GB Internet + 2 GB Streaming, Active Period 30 days',
          ),
          const SizedBox(
            height: 15,
          ),
          InfoCard(
            trailing: 'Rp 50.000',
            title: 'Simple Package',
            img: 'img/group6.png',
            subtitle: '14 GB Internet + 2 GB Streaming, Active Period 30 days',
          )
        ],
      ),
    );
  }
}
