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
  // add coffe to cart
  void addToCart(Coffe coffe) {
    Provider.of<CoffeShop>(context, listen: false).addItemToCart(coffe);
  }

  String searchText = '';

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "How do you like your coffee?",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(height: 18),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search coffee...',
                  prefixIcon: Icon(Icons.search, color: Colors.brown.shade300),
                  filled: true,
                  fillColor: Colors.brown.shade50,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    searchText = value;
                  });
                },
              ),
              const SizedBox(height: 18),
              Expanded(
                child: ListView.builder(
                  itemCount: value.coffeShop.length,
                  itemBuilder: (context, index) {
                    Coffe eachCoffe = value.coffeShop[index];
                    if (searchText.isNotEmpty &&
                        !eachCoffe.name.toLowerCase().contains(
                          searchText.toLowerCase(),
                        )) {
                      return const SizedBox.shrink();
                    }
                    return CoffeTile(
                      coffe: eachCoffe,
                      onPressed: () {
                        addToCart(eachCoffe);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('${eachCoffe.name} added to cart!'),
                            backgroundColor: Colors.brown.shade200,
                            duration: const Duration(milliseconds: 1200),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
