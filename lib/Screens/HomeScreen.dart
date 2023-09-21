import 'package:flutter/material.dart';
import 'package:shoes_shop/Screens/CartScreen.dart';
import 'package:shoes_shop/Screens/ShopScreen..dart';
import 'package:velocity_x/velocity_x.dart';

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

      // appbar of application
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              }),
        ),
      ),

      // drawer of app

      drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // logo
                  DrawerHeader(
                    child: Image.asset(
                      'assets/images/logo.png',
                      color: Colors.white,
                    ),
                  ),

                  // line between this
                  Divider(
                    color: Colors.grey[800],
                  ).px24(),

                  // Item 1

                  const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        title: Text(
                          "home",
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                  // Item 2

                  const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      title: Text(
                        "About",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              // Item 3

              const Padding(
                padding: EdgeInsets.only(left: 25.0, bottom: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    "LogOut",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          )),
      // body of application
      body: _pages[_selectedIndex],
    );
  }
}
