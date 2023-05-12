import 'package:app_library/src/widgets/livro_card.dart';
import 'package:flutter/material.dart';

import '../repositories/livro_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final tabela = LivroRepository.tabela;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Olá!'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/config');
                  },
                  icon: const Icon(Icons.settings_outlined)),
            ),
          ],
        ),
        body: GridView.builder(
          itemCount: tabela.length,
          itemBuilder: (_, index) {
            return LivroCard(livro: tabela[index]);
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        ));
  }
}
