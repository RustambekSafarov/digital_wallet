import 'package:digital_wallet/pages/home.dart';
import 'package:digital_wallet/pages/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
  ));
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
    NextPage(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: name[_selectedIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        selectedFontSize: 15,
        unselectedFontSize: 13,
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: Colors.purple,
              ),
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.grid_view,
                color: Colors.purple,
              ),
              icon: Icon(
                Icons.grid_view,
                color: Colors.grey,
              ),
              label: ''),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.pie_chart,
              color: Colors.purple,
            ),
            icon: Icon(
              Icons.pie_chart,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.settings,
              color: Colors.purple,
            ),
            icon: Icon(
              Icons.settings,
              color: Colors.grey,
            ),
            label: '',
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
