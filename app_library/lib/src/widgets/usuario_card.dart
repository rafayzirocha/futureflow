// ignore_for_file: must_be_immutable

import 'package:app_library/src/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../repositories/usuario_repository.dart';

class UsuarioCard extends StatefulWidget {
  Usuario usuario;
  UsuarioCard({Key? key, required this.usuario}) : super(key: key);

  @override
  State<UsuarioCard> createState() => _UsuarioCardState();
}

class _UsuarioCardState extends State<UsuarioCard> {
  final tabela = UsuarioRepository.usuarioTabela;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          maxRadius: 20,
          backgroundImage: AssetImage(widget.usuario.foto),
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.usuario.nome,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.lato(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.50,
                color: Colors.black,
              ),
            ),
            Text(
              widget.usuario.rm,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.lato(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.50,
                color: const Color(0xFF44464F),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
