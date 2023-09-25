import 'package:flutter/material.dart';
import 'package:shoes_shop/models/shoeModel.dart';
import 'package:shoes_shop/widgets/ShoeTile.dart';
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

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hot Picks 🔥",
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "See all",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 10),

        // shoe tile

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Shoe shoe = Shoe(
                  name: "sample",
                  price: "100",
                  imgPath: "assets/images/logo.png",
                  descreption: "the shoe is ");
              return ShoeTile(
                shoe: shoe,
              );
            },
          ),
        ),

        // devider

        const Padding(
            padding: EdgeInsets.only(top: 25),
            child: Divider(
              color: Colors.white,
            ))
      ],
    );
  }
}
