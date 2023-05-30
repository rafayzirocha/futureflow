import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Visão Geral',
          style: GoogleFonts.lato(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 6),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: RawChip(
                label: Text(
                  'Livros',
                  style: GoogleFonts.lato(),
                ),
                onSelected: (value) =>
                    Navigator.of(context).pushNamed('/livros'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: RawChip(
                label: Text(
                  'Categorias',
                  style: GoogleFonts.lato(),
                ),
                onSelected: (value) =>
                    Navigator.of(context).pushNamed('/categorias'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: RawChip(
                label: Text(
                  'Avisos',
                  style: GoogleFonts.lato(),
                ),
                onSelected: (value) =>
                    Navigator.of(context).pushNamed('/avisos'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
