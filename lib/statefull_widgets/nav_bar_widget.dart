import 'package:flutter/material.dart';

class nav_bar_widget extends StatefulWidget {
  const nav_bar_widget({Key? key}) : super(key: key);

  @override
  State<nav_bar_widget> createState() => _nav_bar_widget();
}

class _nav_bar_widget extends State<nav_bar_widget> {
  
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex==0){
        Navigator.pushNamed(context, '/');
      }
      else if(_selectedIndex==1){
        Navigator.pushNamed(context, '/mmm');
      }
      else{
        Navigator.pushNamed(context, '/categories');
      }
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      
    );
  }
}