import 'package:flutter/material.dart';

void main() => runApp(const GaleriaFotos());

class GaleriaFotos extends StatelessWidget {
  const GaleriaFotos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Galeria de Fotos',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.amber),
      home: const MinhaGaleriaFotos(),
    );
  }
}

class MinhaGaleriaFotos extends StatelessWidget {
  const MinhaGaleriaFotos({super.key});

  @override
  Widget build(BuildContext context) {
    final fotos = List.generate(
      12,
      (i) => 'https://picsum.photos/200/200?random=$i',
    );
    return Scaffold(
      appBar: AppBar(title: const Text('Galeria de Fotos')),
      body: GridView.count(
        crossAxisCount: 3,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: fotos
            .map(
              (url) => ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(url, fit: BoxFit.cover),
              ),
            )
            .toList(),
      ),
    );
  }
}
