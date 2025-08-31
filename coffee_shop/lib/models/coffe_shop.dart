import 'package:flutter/material.dart';
import 'coffe.dart';

class CoffeShop {
  // coffe for sale list
  final List<Coffe> _shop = [
    // black coffe
    Coffe(name: "Long Black", price: "4.10", imagepath: "lib/images/black.png"),
    //latte
    Coffe(name: "Long Black", price: "4.20", imagepath: "lib/images/latte.png"),

    //expresso
    Coffe(
      name: "Long Black",
      price: "4.10",
      imagepath: "lib/images/expresso.png",
    ),

    // iced coffe
    Coffe(
      name: "Long Black",
      price: "4.10",
      imagepath: "lib/images/iced_coffe.png",
    ),
  ];

  //user cart
  List<Coffe> _userCart = [];

  //get coffe list
  List<Coffe> get coffeShop => _shop;

  // get user cart
  List<Coffe> get userCart => _userCart;

  // remove item from cart
  void addItemCArt(Coffe coffe) {
    _userCart.remove(coffe);
  }
}
