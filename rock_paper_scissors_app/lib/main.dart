import 'package:flutter/material.dart';

void main() {
  runApp(const RockPaperScissorsApp());
}

class RockPaperScissorsApp extends StatelessWidget {
  const RockPaperScissorsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pedra, Papel e Tesoura'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Escolha sua jogada:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _ChoiceButton(
                    icon: Icons.pan_tool,
                    label: 'Pedra',
                    color: Colors.brown,
                  ),
                  _ChoiceButton(
                    icon: Icons.description,
                    label: 'Papel',
                    color: Colors.green,
                  ),
                  _ChoiceButton(
                    icon: Icons.content_cut,
                    label: 'Tesoura',
                    color: Colors.red,
                  ),
                ],
              ),
              const SizedBox(height: 48),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: const [
                    Text('Sua escolha:', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 8),
                    Icon(Icons.help_outline, size: 48, color: Colors.grey),
                    SizedBox(height: 16),
                    Text(
                      'Escolha do computador:',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Icon(Icons.help_outline, size: 48, color: Colors.grey),
                    SizedBox(height: 16),
                    Text('Resultado:', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 8),
                    Text(
                      '---',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ChoiceButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _ChoiceButton({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 32,
          backgroundColor: color,
          child: Icon(icon, size: 36, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}
