import 'package:flutter/material.dart';
import 'package:shoes_shop/Screens/CartScreen.dart';
import 'package:shoes_shop/Screens/ShopScreen..dart';

import '../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // This is SelectedIndex

  int _selectedIndex = 0;

  //  This method update Our Selected Index
  // When The user Taps on bottom bar

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    // Shop page
    const ShopScreen(),
    // cart Page
    const CartScreen(),

    //
  ];
  @override
  Widget build(BuildContext context) {
    // This Selected Index is to control bottom nav Bar

    return Scaffold(
      bottomNavigationBar:
          Bottomnavbar(onTabChange: (index) => navigateBottomBar(index)),
      body: _pages[_selectedIndex],
    );
  }
}
