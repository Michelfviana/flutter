import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products;
  final Function(Product) onAddToCart;

  const ProductListScreen({
    required this.products,
    required this.onAddToCart,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FastFoodX')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(product.name),
              subtitle: Text('R\$ ${product.price.toStringAsFixed(2)}'),
              trailing: ElevatedButton(
                onPressed: () => onAddToCart(product),
                child: const Text('Adicionar'),
              ),
            ),
          );
        },
      ),
    );
  }
}
