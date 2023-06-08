import 'package:app_library/src/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/livro.dart';
import '../repositories/livro_repository.dart';

// ignore: must_be_immutable
class LivroCard extends StatefulWidget {
  Livro livro;
  LivroCard({Key? key, required this.livro}) : super(key: key);

  @override
  State<LivroCard> createState() => _LivroCardState();
}

class _LivroCardState extends State<LivroCard> {
  final tabela = LivroRepository.tabela;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.livro.titulo,
        style: GoogleFonts.lato(
          color: lightColorScheme.outline,
        ),
      ),
      subtitle: Text(
        widget.livro.autor,
        style: GoogleFonts.lato(
          color: lightColorScheme.outline,
        ),
      ),
      leading: Image.asset(widget.livro.foto),
      onTap: () {},
    );
  }
}
