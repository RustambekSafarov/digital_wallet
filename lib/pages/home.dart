import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Flex(
            direction: Axis.vertical,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 370,
                decoration: BoxDecoration(
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 80),
                    const Text('Your Balance'),
                    const SizedBox(height: 15),
                    Text(
                      'Rp 8.250.000',
                      style: TextStyle(fontSize: 36),
                    ),
                    const SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 58,
                              height: 58,
                              child: OutlinedButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.arrow_circle_right,
                                  color: Colors.white,
                                ),
                                style: OutlinedButton.styleFrom(
                                    backgroundColor: Color(0xFF32A7E2),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Transfer'),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 58,
                              height: 58,
                              child: OutlinedButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.download,
                                  color: Colors.white,
                                ),
                                style: OutlinedButton.styleFrom(
                                    backgroundColor: Color(0xFFB548C6),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Top-up'),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 58,
                              height: 58,
                              child: OutlinedButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.wallet,
                                  color: Colors.white,
                                ),
                                style: OutlinedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Bill'),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 58,
                              height: 58,
                              child: OutlinedButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.grid_view,
                                  color: Colors.white,
                                ),
                                style: OutlinedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('More'),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
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
                      padding:
                          const EdgeInsets.only(top: 20, left: 10, right: 10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(children: [
                          Text('      Transactions'),
                          Divider(),
                          SizedBox(
                            height: 16.9,
                          ),
                          ListTile(
                            onTap: () {},
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Grocery'),
                                Text('326.800'),
                              ],
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Nov 17'),
                                Text('Minimarket Anugrah')
                              ],
                            ),
                            leading: Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 217, 242, 255),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Icon(
                                  Icons.shopping_cart,
                                  color: Color(0xFF32A7E2),
                                )),
                          ),
                          ListTile(
                            onTap: () {},
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Entertainment'),
                                Text('326.800'),
                              ],
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text('Nov 17'), Text('Football Game')],
                            ),
                            leading: Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 251, 227, 255),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Icon(
                                  Icons.sports_esports,
                                  color: Color(0xFFB548C6),
                                )),
                          ),
                          ListTile(
                            onTap: () {},
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Equipments'),
                                Text('326.800'),
                              ],
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text('Nov 17'), Text('DSLR Camera')],
                            ),
                            leading: Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 255, 242, 227),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Color(0xFFFF8700),
                                )),
                          ),
                          ListTile(
                            onTap: () {},
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Office Items'),
                                Text('326.800'),
                              ],
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text('Nov 17'), Text('Stationary')],
                            ),
                            leading: Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 225, 255, 244),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Icon(
                                  Icons.business_center,
                                  color: Color(0xFF22B07D),
                                )),
                          ),
                        ]),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
