import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xff0E3C6E),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.60),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      items: [
        BottomNavigationBarItem(
          label: 'Search',
          icon: Icon(
            Icons.home_rounded,
            size: MediaQuery.of(context).size.height * 0.03,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Saved',
          icon: Icon(
            Icons.bookmark_added_rounded,
            size: MediaQuery.of(context).size.height * 0.03,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Saved',
          icon: Icon(
            Icons.save_rounded,
            size: MediaQuery.of(context).size.height * 0.03,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Account',
          icon: Icon(
            Icons.person_rounded,
            size: MediaQuery.of(context).size.height * 0.03,
          ),
        ),
      ],
    );
  }
}
