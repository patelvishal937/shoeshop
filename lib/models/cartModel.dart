import 'package:shoes_shop/models/shoeModel.dart';

class cart {
  // list item for sale Shoes

  List<Shoe> shoesList = [
    Shoe(
      name: "one",
      price: '236',
      imgPath: "/assets/images/img1.png",
      descreption: "Shoe is the ",
    ),
    Shoe(
      name: "one",
      price: '236',
      imgPath: "/assets/images/img2.png",
      descreption: "Shoe is the ",
    ),
    Shoe(
      name: "one",
      price: '236',
      imgPath: "/assets/images/img3.png",
      descreption: "Shoe is the ",
    ),
    Shoe(
      name: "one",
      price: '236',
      imgPath: "/assets/images/img4.png",
      descreption: "Shoe is the ",
    ),
    Shoe(
      name: "one",
      price: '236',
      imgPath: "/assets/images/img5.png",
      descreption: "Shoe is the ",
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
  }

  // remove items to cart

  void removeItemcCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
