import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavbar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const MyBottomNavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.brown.shade200, Colors.brown.shade50],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.brown.withOpacity(0.12),
            blurRadius: 18,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        child: GNav(
          onTabChange: onTabChange,
          color: Colors.brown[400],
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Colors.brown[900],
          tabBackgroundColor: Colors.brown.shade100,
          tabBorderRadius: 24,
          tabActiveBorder: Border.all(color: Colors.brown.shade400, width: 2),
          gap: 10,
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
          iconSize: 30,
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: Colors.brown,
            letterSpacing: 0.5,
          ),
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
          tabs: const [
            GButton(icon: Icons.coffee, text: 'Shop', iconColor: Colors.brown),
            GButton(
              icon: Icons.shopping_cart_rounded,
              text: 'Cart',
              iconColor: Colors.brown,
            ),
          ],
        ),
      ),
    );
  }
}
