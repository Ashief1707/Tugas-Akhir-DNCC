import 'package:cek/navbarpages/HomePage.dart';
import 'package:cek/navbarpages/SearchPage.dart';
import 'package:cek/navbarpages/NotifPage.dart';
import 'package:cek/navbarpages/ProfilPage.dart';
import 'package:flutter/material.dart';
import 'package:cek/style/ColorConfig.dart';

class Navpage extends StatefulWidget {
  const Navpage({super.key});

  @override
  State<Navpage> createState() => _NavpageState();
}

class _NavpageState extends State<Navpage> {
    List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    NotifPage(),
    ProfilPage(),
  ];


  int _selectedIndex = 0;

  void changeIndexPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
        bottomNavigationBar:  Container(
            height: 70,
            child: BottomNavigationBar(
              elevation: 10,
              backgroundColor: bgnavbar,
              type: BottomNavigationBarType.fixed,
              onTap: changeIndexPage,
              showSelectedLabels: false,
              showUnselectedLabels: false,              
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,size: 33,
                    color:
                        _selectedIndex == 0 ? bgbtnlogin : Colors.grey,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,size: 33,
                    color:
                        _selectedIndex == 1 ? bgbtnlogin : Colors.grey,
                  ),
                  label: "Search"
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications,size: 33,
                      color: _selectedIndex == 2 ? bgbtnlogin : Colors.grey
                  ),
                  label: "Notification"
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person,size: 33,
                      color: _selectedIndex == 3
                          ? bgbtnlogin: Colors.grey
                    ),
                  label: "Setting"
                ),
              ],
            ),
          ),
        
    );
  }
}