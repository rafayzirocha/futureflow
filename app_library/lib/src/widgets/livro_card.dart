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
      child: Card(
        elevation: 0,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  widget.livro.foto,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                widget.livro.titulo,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.sora(color: Colors.black, fontSize: 16),
              ),
            ),
            Text(
              'Livro por ${widget.livro.autor}',
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.sora(color: lightColorScheme.outline),
            ),
          ],
        ),
      ),
    );
  }
}
