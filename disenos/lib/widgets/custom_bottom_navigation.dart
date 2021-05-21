import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 2,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.videogame_asset_outlined),
          label:'Gamepad' 
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.gif_rounded),
          label:'Calendario' 
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.indeterminate_check_box_outlined),
          label:'Yokc' 
        ),
      ],
    );
  }
}