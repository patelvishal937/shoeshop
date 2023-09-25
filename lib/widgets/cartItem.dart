import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop/models/cartModel.dart';
import 'package:shoes_shop/models/shoeModel.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart(Shoe shoe) {
    Provider.of<cart>(context, listen: false).removeItemcCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imgPath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          onPressed: () => removeItemFromCart(widget.shoe),
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
