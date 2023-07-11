// ignore_for_file: must_be_immutable

import 'package:app_library/src/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../repositories/usuario_repository.dart';

class UsuarioList extends StatefulWidget {
  Usuario usuario;
  UsuarioList({Key? key, required this.usuario}) : super(key: key);

  @override
  State<UsuarioList> createState() => _UsuarioListState();
}

class _UsuarioListState extends State<UsuarioList> {
  final tabela = UsuarioRepository.usuarioTabela;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(widget.usuario.foto),
      ),
      title: Text(
        widget.usuario.nome,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.lato(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.50,
          color: const Color(0xFF44464F),
        ),
      ),
      subtitle: Text(
        widget.usuario.rm,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.lato(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.50,
          color: const Color(0xFF44464F),
        ),
      ),
    );
  }
}
