import 'package:digital_wallet/pages/chart.dart';
import 'package:digital_wallet/pages/home.dart';
import 'package:digital_wallet/pages/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        'more': (context) => MenuPage(),
      },
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    ),
  );
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  int _selectedIndex = 0;
  void onItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> name = [
    HomePage(),
    MenuPage(),
    ChartPage(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: name[_selectedIndex],
      backgroundColor: Color(0xFFE5E5E5),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        iconSize: 30,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.grid_view_rounded,
                color: Colors.blue,
              ),
              icon: Icon(
                Icons.grid_view_rounded,
                color: Colors.grey,
              ),
              label: 'More'),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.pie_chart,
              color: Colors.blue,
            ),
            icon: Icon(
              Icons.pie_chart,
              color: Colors.grey,
            ),
            label: 'Graph',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
            icon: Icon(
              Icons.settings,
              color: Colors.grey,
            ),
            label: 'Settings',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
