import 'package:app_library/src/models/aviso.dart';
import 'package:app_library/src/repositories/avisos_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class AvisoCard extends StatefulWidget {
  Aviso aviso;
  AvisoCard({Key? key, required this.aviso}) : super(key: key);

  @override
  State<AvisoCard> createState() => _AvisoCardState();
}

class _AvisoCardState extends State<AvisoCard> {
  final tabela = AvisosRepository.tabela;

  String getFormattedDateTime() {
    final formatter = DateFormat('dd/MM/yyyy HH:mm');
    return formatter.format(widget.aviso.dataHora);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.aviso.foto,
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.aviso.titulo,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(widget.aviso.descricao),
                  SizedBox(height: 8.0),
                  Text(
                    getFormattedDateTime(),
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
