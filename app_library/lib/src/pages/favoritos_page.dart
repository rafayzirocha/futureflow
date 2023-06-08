import 'package:app_library/src/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritosPage extends StatefulWidget {
  const FavoritosPage({super.key});

  @override
  State<FavoritosPage> createState() => _FavoritosPageState();
}

class _FavoritosPageState extends State<FavoritosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Text(
            'Você não possui favoritos!',
            style: GoogleFonts.lato(
              color: lightColorScheme.outline,
            ),
          ),
        ),
      ),
    );
  }
}
