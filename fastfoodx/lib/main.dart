import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/product_list_screen.dart';
import 'screens/cart_screen.dart';
import 'models/product.dart';

void main() {
  runApp(const FastFoodX());
}

class FastFoodX extends StatelessWidget {
  const FastFoodX({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FastFoodX',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Product> _cartItems = [];

  // Dados de exemplo
  final List<Product> _bebidas = [
    Product(name: 'Refrigerante Lata', price: 5.00),
    Product(name: 'Suco Natural', price: 8.00),
    Product(name: 'Água Mineral', price: 3.00),
  ];
  final List<Product> _pizzas = [
    Product(name: 'Mussarela', price: 25.00),
    Product(name: 'Calabresa', price: 28.00),
    Product(name: 'Frango c/ Catupiry', price: 30.00),
  ];
  final List<Product> _sanduiches = [
    Product(name: 'Cheeseburger', price: 12.00),
    Product(name: 'X-Bacon', price: 15.00),
    Product(name: 'Veggie Burger', price: 14.00),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _addToCart(Product product) {
    setState(() {
      _cartItems.add(product);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${product.name} adicionado ao carrinho!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _screens = [
      HomeScreen(onCategorySelected: (index) => _onItemTapped(index)),
      ProductListScreen(products: _bebidas, onAddToCart: _addToCart),
      ProductListScreen(products: _pizzas, onAddToCart: _addToCart),
      ProductListScreen(products: _sanduiches, onAddToCart: _addToCart),
      CartScreen(cartItems: _cartItems),
    ];

    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink),
            label: 'Bebidas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_pizza),
            label: 'Pizzas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            label: 'Sanduíches',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrinho',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
