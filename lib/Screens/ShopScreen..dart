import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar

        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        // messege

        Padding(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Text(
            "Everyone Flies... Some fly Longer Than Others",
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
        ),

        // Hot pics

        Row(
          children: [
            Text("Hot Picks "),
            Text("See all"),
          ],
        )
      ],
    );
  }
}
