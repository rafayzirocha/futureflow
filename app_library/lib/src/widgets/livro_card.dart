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
    return Card(
      elevation: 0,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {},
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  widget.livro.foto,
                  fit: BoxFit.fill,
                  height: 125,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: Text(
                widget.livro.titulo,
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: lightColorScheme.onSurface,
                ),
              ),
            ),
            Text(
              widget.livro.autor,
              style: GoogleFonts.lato(
                fontSize: 14,
                color: lightColorScheme.outline,
              ),
            )
          ],
        ),
      ),
    );
  }
}
