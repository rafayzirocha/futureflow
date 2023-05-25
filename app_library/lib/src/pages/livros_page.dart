//import 'package:app_library/src/widgets/livro_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../repositories/livro_repository.dart';
import '../widgets/livro_image_card.dart';

class LivrosPage extends StatefulWidget {
  const LivrosPage({super.key});

  @override
  State<LivrosPage> createState() => _LivrosPageState();
}

class _LivrosPageState extends State<LivrosPage> {
  @override
  Widget build(BuildContext context) {
    final tabela = LivroRepository.tabela;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Livros',
          style: GoogleFonts.lato(),
        ),
      ),
      body: GridView.builder(
        itemCount: tabela.length,
        itemBuilder: (_, index) {
          return const GameImageCard();
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
      ),
    );
  }
}
