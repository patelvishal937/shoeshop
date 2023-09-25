import 'package:flutter/material.dart';
import 'package:shoes_shop/models/shoeModel.dart';

class Cart extends ChangeNotifier {
  // list item for sale Shoes

  List<Shoe> shoesList = [
    Shoe(
      name: "puma",
      price: '236',
      imgPath: "assets/images/img1.png",
      descreption:
          " Unleash your athletic potential with responsive cushioning, breathable mesh, and exceptional traction.",
    ),
    Shoe(
      name: "puma motorsport",
      price: '236',
      imgPath: "assets/images/img2.png",
      descreption:
          "Elevate your style with timeless suede classics offering comfort and grip for any occasion.",
    ),
    // Shoe(
    //   name: "one",
    //   price: '236',
    //   imgPath: "assets/images/img3.png",
    //   descreption:
    //       "Embrace street-style chic with lightweight, retro-inspired kicks featuring shock-absorbing comfort.",
    // ),
    Shoe(
      name: "puma lightweight",
      price: '236',
      imgPath: "assets/images/img4.png",
      descreption:
          "Achieve peak performance in these adaptable, knitted trainers built for stability and responsiveness. ",
    ),
    Shoe(
      name: "puma magical",
      price: '236',
      imgPath: "assets/images/img5.png",
      descreption:
          "Step up your fashion game with chunky platform soles and sleek leather in the trendsetting Cali sneakers.",
    ),
  ];

  // List all item in user cart

  List<Shoe> userCart = [];

  // get list of Shoes for Sale

  List<Shoe> getShoeList() {
    return shoesList;
  }
  // get cart

  List<Shoe> getCartList() {
    return userCart;
  }
  // add items to cart

  void addItemInCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items to cart

  void removeItemcCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
