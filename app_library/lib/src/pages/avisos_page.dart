import 'package:app_library/src/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvisosPage extends StatefulWidget {
  const AvisosPage({super.key});

  @override
  State<AvisosPage> createState() => _AvisosPageState();
}

class _AvisosPageState extends State<AvisosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Text(
            'Sem avisos por aqui!',
            style: GoogleFonts.lato(
              color: lightColorScheme.outline,
            ),
          ),
        ),
      ),
    );
  }
}
