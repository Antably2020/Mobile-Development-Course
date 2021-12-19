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
      if (_selectedIndex == 0) {
        Navigator.pushNamed(context, '/');
      } else if (_selectedIndex == 1) {
        Navigator.pushNamed(context, '/myitems');
      } else if (_selectedIndex == 2) {
        Navigator.pushNamed(context, '/offers');
      } else if (_selectedIndex == 3) {
        Navigator.pushNamed(context, '/addproducts');
      } else {
        Navigator.pushNamed(context, '/offers_recieved');
      }
    }
    );
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
          icon: Icon(Icons.my_library_books_rounded),
          label: 'my items',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.my_library_books_outlined),
          label: 'my Offers',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box_rounded),
          label: 'Add Item',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Offer Recieved',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
      onTap: _onItemTapped,
    );
  }
}
