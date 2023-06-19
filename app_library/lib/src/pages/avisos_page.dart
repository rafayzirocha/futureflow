import 'package:flutter/material.dart';

import '../repositories/avisos_repository.dart';
import '../widgets/aviso_card.dart';

class AvisosPage extends StatefulWidget {
  const AvisosPage({super.key});

  @override
  State<AvisosPage> createState() => _AvisosPageState();
}

class _AvisosPageState extends State<AvisosPage> {
  final tabela = AvisosRepository.tabela;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView.builder(
          itemCount: tabela.length,
          itemBuilder: (_, index) {
            return AvisoCard(
              aviso: tabela[index],
            );
          },
        ),
      ),
    );
  }
}
