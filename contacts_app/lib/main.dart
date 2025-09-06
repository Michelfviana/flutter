import 'package:flutter/material.dart';

void main() => runApp(const CartaoPerfil());

class CartaoPerfil extends StatelessWidget {
  const CartaoPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    final String tituloApp = 'Cartão de Perfil';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: tituloApp,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.amberAccent),
      home: const MinhaHomePage(),
    );
  }
}

class MinhaHomePage extends StatelessWidget {
  const MinhaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cartão de Perfil',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Card(
          elevation: 4,
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //substituir por uma imagem
                const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/foto.jpg'),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Clerivaldo José Roccia',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.phone, color: Colors.blue),
                    SizedBox(width: 8),
                    Text('+55 (19) 3412-1100'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
