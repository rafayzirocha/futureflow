import 'package:flutter/material.dart';

import '../models/livro.dart';
import '../repositories/livro_repository.dart';

// ignore: must_be_immutable
class LivroImageCard extends StatefulWidget {
  Livro livro;
  LivroImageCard({Key? key, required this.livro}) : super(key: key);

  @override
  State<LivroImageCard> createState() => _LivroImageCardState();
}

class _LivroImageCardState extends State<LivroImageCard> {
  final tabela = LivroRepository.tabela;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Card(
        elevation: 10,
        child: InkWell(
          onTap: () {},
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Image.asset(
              widget.livro.foto,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
        ),
      ),
    );
  }
}
