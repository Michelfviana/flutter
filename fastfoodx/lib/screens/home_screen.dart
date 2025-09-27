import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Function(int) onCategorySelected;
  const HomeScreen({required this.onCategorySelected, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FastFoodX')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Barra de busca
            const TextField(
              decoration: InputDecoration(
                hintText: 'Buscar lanches, bebidas...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            // Promoção do dia
            const Text(
              'Promoção do dia',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // Placeholder para a imagem
                      height: 150,
                      color: Colors.grey[200],
                      child: const Center(child: Text('Imagem do produto')),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Cheeseburger',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text('Bacon, queijo e alface'),
                    const Text(
                      'R\$ 12,00',
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        /* Adicionar ao carrinho e ir para o carrinho */
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: const Text('Adicionar ao carrinho'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Categorias
            const Text(
              'Escolha uma categoria:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => onCategorySelected(1),
                  child: const Text('Bebidas'),
                ),
                ElevatedButton(
                  onPressed: () => onCategorySelected(2),
                  child: const Text('Pizzas'),
                ),
                ElevatedButton(
                  onPressed: () => onCategorySelected(3),
                  child: const Text('Sanduíches'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
