import 'package:flutter/material.dart';

class BotomNavigatorWidget extends StatelessWidget {
   
  const BotomNavigatorWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: false,
      showSelectedLabels: false,
      backgroundColor: const  Color.fromRGBO(55, 57, 84, 1),
      selectedItemColor: Colors.pink,
      currentIndex: 1,
      iconSize: 40,
      items: const [
        BottomNavigationBarItem(
          label: 'Calendar',
          icon: Icon(Icons.calendar_month_outlined)),
        BottomNavigationBarItem(
          label: 'Grafico',
          icon: Icon(Icons.pin_end)),
        BottomNavigationBarItem(
          label: 'Usuarios',
          icon: Icon(Icons.supervised_user_circle_rounded))
    ]);

  }
}