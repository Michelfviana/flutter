import 'package:coffee_shop/components/coffe_tile.dart';
import 'package:coffee_shop/models/coffe.dart';
import 'package:coffee_shop/models/coffe_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // heading message
              const Text(
                "How would you like your coffee?",
                style: TextStyle(fontSize: 20),
              ), // Text
              const SizedBox(height: 25),
              // List of coffe to buy
              Expanded(
                child: ListView.builder(
                  itemCount: value.coffeShop.length,
                  itemBuilder: (context, index) {
                    // get individual coffe
                    Coffe eachCoffe = value.coffeShop[index];

                    // return the title for this coffe
                    return CoffeTile(coffe: eachCoffe);
                  },
                ),
              ),
            ], // children
          ), // Column
        ), // Padding
      ),
    );
  }
}
