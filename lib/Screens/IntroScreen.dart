import 'package:flutter/material.dart';
import 'package:shoes_shop/Screens/HomeScreen.dart';
import 'package:shoes_shop/widgets/Textwidget.dart';
import 'package:velocity_x/velocity_x.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // logo

          Image.asset(
            'assets/images/logo.png',
            height: 400,
          ),

          // Title

          // const Text(
          //   'Just do it',
          //   style: TextStyle(
          //     fontSize: 24,
          //     fontWeight: FontWeight.bold,
          //     color: Colors.black,
          //   ),
          // ),
          // const SizedBox(height: 20),

          // Description

          // Textwidget(
          //   text: 'Forever Faster is always First , Never Second , Never Third',
          //   color: const Color.fromARGB(255, 33, 30, 30),
          //   fontWeight: FontWeight.bold,
          // ),
          // const SizedBox(height: 30),

          // button

          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              });
            },
            child: Container(
                height: 65,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Textwidget(
                  text: 'Shop Now',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ).centered()),
          )
        ],
      ).p16(),
    );
  }
}
