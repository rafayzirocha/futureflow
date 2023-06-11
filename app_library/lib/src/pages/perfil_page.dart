import 'package:app_library/src/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  alignment: FractionalOffset.centerLeft,
                  child: Text(
                    'Configurações',
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Card(
                  color: Colors.white,
                  elevation: 0,
                  child: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              FeatherIcons.user,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Minha conta',
                              style: GoogleFonts.lato(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          FeatherIcons.chevronRight,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Card(
                  color: Colors.white,
                  elevation: 0,
                  child: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              FeatherIcons.bell,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Sobre as notificações',
                              style: GoogleFonts.lato(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          FeatherIcons.chevronRight,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  alignment: FractionalOffset.centerLeft,
                  child: Text(
                    'Suporte e ajuda',
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Card(
                  color: Colors.white,
                  elevation: 0,
                  child: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              FeatherIcons.helpCircle,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Perguntas frequentes',
                              style: GoogleFonts.lato(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          FeatherIcons.chevronRight,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Card(
                  color: Colors.white,
                  elevation: 0,
                  child: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              FeatherIcons.messageCircle,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Fale conosco',
                              style: GoogleFonts.lato(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          FeatherIcons.chevronRight,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Card(
                  color: Colors.white,
                  elevation: 0,
                  child: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              FeatherIcons.book,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Termos e políticas',
                              style: GoogleFonts.lato(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          FeatherIcons.chevronRight,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Versão 1.0.0',
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    color: lightColorScheme.outline,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: SizedBox(
                  width: double.infinity,
                  child: FilledButton.tonal(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xFFEDF2F6),
                      ),
                    ),
                    child: Text(
                      'Sair',
                      style: GoogleFonts.lato(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
