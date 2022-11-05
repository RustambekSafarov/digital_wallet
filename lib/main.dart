import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color iconColor = Colors.purple;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(),

      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        elevation: 25,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Container(
                    width: 35,
                    height: 35,
                    child: Image.asset('img/home_icon.png')),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Container(
                    width: 35,
                    height: 35,
                    child: Image.asset('img/more_icon.png')),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 3;
                  });
                },
                child: Container(
                    width: 35,
                    height: 35,
                    child: Image.asset('img/partition.png')),
              ),
              InkWell(
                onTap: () {
                  index = 4;
                },
                child: Container(
                    width: 35,
                    height: 35,
                    child: Image.asset('img/settings_icon.png')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
