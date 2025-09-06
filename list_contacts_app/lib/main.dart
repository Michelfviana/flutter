import 'package:flutter/material.dart';
 
void main() => runApp(const ListaContatos());
 
class ListaContatos extends StatelessWidget {
  const ListaContatos({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de Contatos',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const PaginaListaContatos(),
    );
  }
}
 
class PaginaListaContatos extends StatelessWidget {
  const PaginaListaContatos({super.key});
 
  @override
  Widget build(BuildContext context) {
    final listaContatos = [
      {'nome': 'Ana Maria', 'telefone': '19 99434-4445'},
      {'nome': 'João Carlos', 'telefone': '19 99434-4445'},
      {'nome': 'Luisa Motta', 'telefone': '19 99434-4445'},
      {'nome': 'Luisa Motta', 'telefone': '19 99434-4445'},
      {'nome': 'Luisa Motta', 'telefone': '19 99434-4445'},
      {'nome': 'Luisa Motta', 'telefone': '19 99434-4445'},
      {'nome': 'Luisa Motta', 'telefone': '19 99434-4445'},
      {'nome': 'Luisa Motta', 'telefone': '19 99434-4445'},
      {'nome': 'Luisa Motta', 'telefone': '19 99434-4445'},
      {'nome': 'Luisa Motta', 'telefone': '19 99434-4445'},
      {'nome': 'Luisa Motta', 'telefone': '19 99434-4445'},
      {'nome': 'Luisa Motta', 'telefone': '19 99434-4445'},
      {'nome': 'Luisa Motta', 'telefone': '19 99434-4445'},
      {'nome': 'Luisa Motta', 'telefone': '19 99434-4445'},
      {'nome': 'Luisa Motta', 'telefone': '19 99434-4445'},
      {'nome': 'Luisa Motta', 'telefone': '19 99434-4445'},
      {'nome': 'Luisa Motta', 'telefone': '19 99434-4445'},
      {'nome': 'Luisa Motta', 'telefone': '19 99434-4445'},
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lista de Contatos',
          style: TextStyle(fontSize: 24, color: Colors.green),
        ),
      ),
      body: ListView.builder(
        itemCount: listaContatos.length,
        itemBuilder: (context, index) {
          final contato = listaContatos[index];
          return ListTile(
            leading: CircleAvatar(child: Text(contato['nome']![0])),
            title: Text(contato['nome']!),
            subtitle: Text(contato['telefone']!),
            trailing: const Icon(Icons.call, color: Colors.green),
          );
        },
      ),
    );
  }
}
 