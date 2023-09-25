import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop/models/cartModel.dart';
import 'package:shoes_shop/models/shoeModel.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/cartItem.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<cart>(
      builder: (context, value, child) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            // title
            const Text(
              "My Cart",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),

            // Expand size

            SizedBox(
              height: 10,
            ),
            //Shoes item

            Expanded(
              child: ListView.builder(
                  itemCount: value.getCartList().length,
                  itemBuilder: (context, Index) {
                    // display shoes

                    Shoe IndivisualShoe = value.getCartList()[Index];

                    // Return the cart item
                    return CartItem(
                      shoe: IndivisualShoe,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
