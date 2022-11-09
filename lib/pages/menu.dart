import 'package:digital_wallet/pages/bill_payment.dart';
import 'package:digital_wallet/pages/send_money.dart';
import 'package:digital_wallet/pages/withdraw.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  TextEditingController controller = TextEditingController();
  List name = [
    'Send money',
    'Top up Wallet',
    'Bill payment',
    'Withdraw',
  ];
  List pages = [
    SendMoney(),
    Container(),
    BillPayment(),
    Withdraw(),
  ];
  List name2 = [
    'History Transactions',
    'Request Payment',
    'Settings',
    'Help',
  ];
  List<Widget> leading = [
    Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Color(0xFF12CDD9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        Icons.arrow_circle_right,
        color: Colors.white,
      ),
    ),
    Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Color(0xFFB548C6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        Icons.download,
        color: Colors.white,
      ),
    ),
    Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        Icons.wallet,
        color: Colors.white,
      ),
    ),
    Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        Icons.grid_view,
        color: Colors.white,
      ),
    ),
  ];
  List<Widget> leading2 = [
    Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Color(0xFF9471F6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        Icons.import_export,
        color: Colors.white,
      ),
    ),
    Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Color(0xFFF67171),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        Icons.people,
        color: Colors.white,
      ),
    ),
    Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Color(0xFF12CDD9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        Icons.settings,
        color: Colors.white,
      ),
    ),
    Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        Icons.description,
        color: Colors.white,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Menu',
                style: TextStyle(fontSize: 23),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            width: 335,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 226, 226, 226),
              borderRadius: BorderRadius.circular(16.5),
            ),
            child: TextField(
              controller: controller,
              cursorColor: Color.fromARGB(255, 78, 78, 78),
              decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 207, 207, 207),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.5),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.5),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Search',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ),
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shortcuts',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 172, 172, 172)),
                ),
                Text(
                  'Customize',
                  style: TextStyle(fontSize: 16, color: Color(0xFF525298)),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.separated(
            itemCount: 4,
            itemBuilder: (context, index) => ListTile(
              title: Text(
                name[index],
                style: TextStyle(fontSize: 18),
              ),
              leading: leading[index],
              onTap: () {
                Navigator.pushNamed(context, name[index]);
              },
            ),
            separatorBuilder: (context, index) => Divider(
              color: Color.fromARGB(255, 226, 226, 226),
            ),
          )),
          Container(
            height: 250,
            color: Colors.white,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 5),
                child: Row(
                  children: [Text('Other Menu')],
                ),
              ),
              Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) => ListTile(
                            title: Text(name2[index]),
                            leading: leading2[index],
                            onTap: () {},
                          ),
                      separatorBuilder: (context, index) => Divider(),
                      itemCount: 4))
            ]),
          )
        ],
      ),
    );
  }
}
