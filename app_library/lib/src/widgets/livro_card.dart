import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/livro.dart';
import '../repositories/livro_repository.dart';

// ignore: must_be_immutable
class LivroCard extends StatefulWidget {
  Livro livro;

  LivroCard({Key? key, required this.livro}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LivroCardState createState() => _LivroCardState();
}

class _LivroCardState extends State<LivroCard> {
  final tabela = LivroRepository.tabela;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
      child: Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.surface,
        margin: const EdgeInsets.only(top: 12),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          onTap: () {},
          child: Column(
            children: [
              SizedBox(
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Image.asset(
                    'images/pequeno_principe.jpg',
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                    width: double.infinity,
                    height: 125,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  widget.livro.titulo,
                  style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(widget.livro.autor, style: GoogleFonts.lato()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
