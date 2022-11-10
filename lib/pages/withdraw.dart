import 'package:flutter/material.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({super.key});

  @override
  State<Withdraw> createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  String txt = '620.000';
  bool selected = true;
  String card_name = 'Personal Account';

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
              'Withdraw',
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
        Text(
          'Your Balance Rp 8.500.000',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        Text(
          'Choose Bank Account',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          width: MediaQuery.of(context).size.width - 60,
          height: 90,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: card_name == 'Personal Account'
                ? Border.all(color: Colors.blue, width: 1.5)
                : Border.all(color: Colors.white),
          ),
          child: Center(
            child: ListTile(
              onTap: (() {
                setState(() {
                  txt = '620.000';
                  card_name = 'Personal Account';
                });
              }),
              title: const Text('Personal Account'),
              subtitle: Text(
                '**** - **** - 9876',
              ),
              leading: Container(
                width: 40,
                height: 40,
                child: Image.asset('img/account.png'),
              ),
              trailing: Radio(
                value: 'Personal Account',
                groupValue: card_name,
                onChanged: (value) {
                  setState(() {
                    txt = '620.000';
                    card_name = value.toString();
                  });
                },
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: MediaQuery.of(context).size.width - 60,
          height: 90,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: card_name == 'Business Account'
                ? Border.all(color: Colors.blue, width: 1.5)
                : Border.all(color: Colors.white),
          ),
          child: Center(
            child: ListTile(
              onTap: () {
                setState(() {
                  txt = '1.000.000';
                  card_name = 'Business Account';
                });
              },
              title: const Text('Business Account'),
              subtitle: Text(
                '**** - **** - 9876',
              ),
              leading: Container(
                width: 40,
                height: 40,
                child: Image.asset('img/file.png'),
              ),
              trailing: Radio(
                value: 'Business Account',
                groupValue: card_name,
                onChanged: (value) {
                  setState(() {
                    txt = '1.000.000';
                    card_name = value.toString();
                  });
                },
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: MediaQuery.of(context).size.width - 60,
          height: 90,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: card_name == 'Family Account'
                ? Border.all(color: Colors.blue, width: 1.5)
                : Border.all(color: Colors.white),
          ),
          child: Center(
            child: ListTile(
              onTap: () {
                setState(() {
                  txt = '800.000';
                  card_name = 'Family Account';
                });
              },
              title: const Text('Family Account'),
              subtitle: Text(
                '**** - **** - 9876',
              ),
              leading: Container(
                width: 40,
                height: 40,
                child: Image.asset('img/home.png'),
              ),
              trailing: Radio(
                value: 'Family Account',
                groupValue: card_name,
                onChanged: (value) {
                  setState(() {
                    txt = '800.000';
                    card_name = value.toString();
                  });
                },
              ),
            ),
          ),
        ),
        SizedBox(
          height: 90,
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
            child: const Text(
              'Continue',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 17,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
