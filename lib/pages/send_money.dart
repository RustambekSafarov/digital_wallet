import 'package:flutter/material.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  String txt = '150.000';
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
              'Send Money',
              style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
            )
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          width: MediaQuery.of(context).size.width - 55,
          height: 90,
          child: Card(
            color: Color(0xFFE5E5E5),
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                const SizedBox(
                  width: 14,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('img/samantha.png'),
                ),
                const SizedBox(
                  width: 14,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Samantha',
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      'Bank - 0987 3422 8756',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 70,
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
          height: 45,
        ),
        Text(
          txt,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontSize: 50,
            color: Color(0xFF525298),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  if (txt == '0') {
                    txt = '1';
                  } else {
                    txt += '1';
                  }
                });
              },
              child: Container(
                width: 125,
                height: 80,
                child: const Center(
                    child: Text(
                  '1',
                  style: TextStyle(fontSize: 24, color: Color(0xFF9494AD)),
                )),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (txt == '0') {
                    txt = '2';
                  } else {
                    txt += '2';
                  }
                });
              },
              child: Container(
                width: 125,
                height: 80,
                child: const Center(
                    child: Text(
                  '2',
                  style: TextStyle(fontSize: 24, color: Color(0xFF9494AD)),
                )),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (txt == '0') {
                    txt = '3';
                  } else {
                    txt += '3';
                  }
                });
              },
              child: Container(
                width: 125,
                height: 80,
                child: const Center(
                    child: Text(
                  '3',
                  style: TextStyle(fontSize: 24, color: Color(0xFF9494AD)),
                )),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  if (txt == '0') {
                    txt = '4';
                  } else {
                    txt += '4';
                  }
                });
              },
              child: Container(
                width: 125,
                height: 80,
                child: const Center(
                    child: Text(
                  '4',
                  style: TextStyle(fontSize: 24, color: Color(0xFF9494AD)),
                )),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (txt == '0') {
                    txt = '5';
                  } else {
                    txt += '5';
                  }
                });
              },
              child: Container(
                width: 125,
                height: 80,
                child: const Center(
                    child: Text(
                  '5',
                  style: TextStyle(fontSize: 24, color: Color(0xFF9494AD)),
                )),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (txt == '0') {
                    txt = '6';
                  } else {
                    txt += '6';
                  }
                });
              },
              child: Container(
                width: 125,
                height: 80,
                child: const Center(
                    child: Text(
                  '6',
                  style: TextStyle(fontSize: 24, color: Color(0xFF9494AD)),
                )),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  if (txt == '0') {
                    txt = '7';
                  } else {
                    txt += '7';
                  }
                });
              },
              child: Container(
                width: 125,
                height: 80,
                child: const Center(
                    child: Text(
                  '7',
                  style: TextStyle(fontSize: 24, color: Color(0xFF9494AD)),
                )),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (txt == '0') {
                    txt = '8';
                  } else {
                    txt += '8';
                  }
                });
              },
              child: Container(
                width: 125,
                height: 80,
                child: const Center(
                    child: Text(
                  '8',
                  style: TextStyle(fontSize: 24, color: Color(0xFF9494AD)),
                )),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (txt == '0') {
                    txt = '9';
                  } else {
                    txt += '9';
                  }
                });
              },
              child: Container(
                width: 125,
                height: 80,
                child: const Center(
                    child: Text(
                  '9',
                  style: TextStyle(fontSize: 24, color: Color(0xFF9494AD)),
                )),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 125,
              height: 80,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (txt == '0') {
                    txt = '0';
                  } else {
                    txt += '0';
                  }
                });
              },
              child: Container(
                width: 125,
                height: 80,
                child: const Center(
                    child: Text(
                  '0',
                  style: TextStyle(fontSize: 24, color: Color(0xFF9494AD)),
                )),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  txt = txt.substring(0, txt.length - 1);
                });
              },
              child: Container(
                width: 125,
                height: 80,
                child: Center(child: Icon(Icons.backspace)),
              ),
            )
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          width: 315,
          height: 64,
          decoration: BoxDecoration(
              color: Color(0xFF525298),
              borderRadius: BorderRadius.circular(36)),
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36))),
            child: Row(
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.arrow_forward),
                ),
                SizedBox(
                  width: 51,
                ),
                Text(
                  'Swipe to Send',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 17,
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
