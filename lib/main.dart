import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop/Screens/IntroScreen.dart';
import 'package:shoes_shop/models/cartModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[300],
        ),
        home: IntroScreen(),
      ),
    );
  }
}
