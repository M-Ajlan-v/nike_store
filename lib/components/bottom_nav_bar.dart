import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  final int selectedIndex;

  MyBottomNavBar({super.key,
  required this.onTabChange,
  required this.selectedIndex

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( vertical: 15),
      child: GNav(
        selectedIndex: selectedIndex,
        color: Colors.grey[400],
        activeColor: Colors.grey.shade900,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        tabBorderRadius: 10,
        onTabChange: onTabChange,

        tabs: const [
        GButton(icon: Icons.home, text: 'Home'),
        GButton(icon: Icons.shopping_cart_sharp, text: 'Cart'),
        GButton(icon: Icons.person, text: 'Profile')
      ],
      ),
    );
  }
}
