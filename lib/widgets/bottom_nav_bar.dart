import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class Bottomnavbar extends StatelessWidget {
  void Function(int)? onTabChange;
  Bottomnavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        // this is the desgin color for bottom tab
        color: Colors.grey,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,

        // alignment for mainAxisAllignemnet
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,

        // this function is for change the value
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          // this is the button 1
          GButton(
            icon: Icons.home,
            text: 'home',
          ),

          // this is button 2
          GButton(
            icon: Icons.shopping_bag,
            text: 'cart',
          ),
        ],
      ),
    ).p8();
  }
}
