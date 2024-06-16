

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mamaconnect/homescreen.dart';
class MainScreen extends StatefulWidget {
  const MainScreen ({super.key});

  @override
  State<MainScreen> createState() => _MyMainScreenState();
}

class _MyMainScreenState extends State<MainScreen> {
  
  int _selectedIndex = 0;
  final _screens =[
    HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens [_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(179, 202, 193, 193),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color.fromARGB(255, 234, 69, 14),
      unselectedItemColor: Colors.black,
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      currentIndex: _selectedIndex,
      onTap: (index){
        setState ( () {
          _selectedIndex = index;
        } );

      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.chat_bubble_text_fill),
          label: "Chat",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_outlined),
          label: "Schedule",
        ),
       
         BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Settings",
        )
      ],
      ),
      
      
    );
  }
}