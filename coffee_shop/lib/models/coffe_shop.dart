import 'package:flutter/material.dart';
import 'coffe.dart';

class CoffeShop extends ChangeNotifier {
  // coffe for sale list
  final List<Coffe> _shop = [
    // black coffe
    Coffe(name: "Long Black", price: "4.10", imagepath: "lib/images/black.png"),
    //latte
    Coffe(name: "Latte", price: "4.20", imagepath: "lib/images/latte.png"),

    //expresso
    Coffe(
      name: "Espresso",
      price: "4.10",
      imagepath: "lib/images/espresso.png",
    ),

    // iced coffe
    Coffe(
      name: "Iced Coffe",
      price: "4.10",
      imagepath: "lib/images/iced-coffee.png",
    ),
  ];

  //user cart
  final List<Coffe> _userCart = [];

  //get coffe list
  List<Coffe> get coffeShop => _shop;

  // get user cart
  List<Coffe> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Coffe coffe) {
    _userCart.add(coffe);
    notifyListeners();
  }

  // remove item from cart
  void addItemCArt(Coffe coffe) {
    _userCart.remove(coffe);
    notifyListeners();
  }
}
