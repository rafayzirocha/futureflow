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
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AspectRatio(
              aspectRatio: 3 / 4, // Defina a proporção desejada
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset(
                    widget.livro.foto,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                widget.livro.titulo,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.lato(color: Colors.black, fontSize: 16),
              ),
            ),
            Text(
              'Livro por ${widget.livro.autor}',
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.lato(color: lightColorScheme.outline),
            ),
          ],
        ),
      ),
    );
  }
}
