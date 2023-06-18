import 'package:app_library/src/widgets/foto_perfil.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar_return.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          child: Column(
            children: [
              AppBarReturn(),
              FotoPerfil(),
            ],
          ),
        ),
      ),
    );
  }
}
