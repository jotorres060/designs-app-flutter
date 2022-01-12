import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {

  const CustomBottomNavigation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      selectedItemColor: Colors.pink,
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.verified_user_outlined),
          label: ''
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.verified_user_outlined),
          label: ''
        ),
      ],
    );
  }

}
