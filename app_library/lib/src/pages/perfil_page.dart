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
  bool cliqueMinhaConta = false;
  bool cliqueSobre = false;
  bool cliquePerguntas = false;
  bool cliqueFaleConosco = false;
  bool cliqueTermosPoliticas = false;

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
                child: InkWell(
                  onTapDown: (_) {
                    setState(() {
                      cliqueMinhaConta = true;
                    });
                  },
                  onTapUp: (_) {
                    setState(() {
                      cliqueMinhaConta = false;
                    });
                  },
                  onTapCancel: () {
                    setState(() {
                      cliqueMinhaConta = false;
                    });
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Card(
                    color: Colors.white,
                    elevation: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              FeatherIcons.user,
                              color: cliqueMinhaConta
                                  ? lightColorScheme.outline
                                  : Colors.black,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Minha conta',
                              style: GoogleFonts.lato(
                                fontSize: 16,
                                color: cliqueMinhaConta
                                    ? lightColorScheme.outline
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          FeatherIcons.chevronRight,
                          color: cliqueMinhaConta
                              ? lightColorScheme.outline
                              : Colors.black,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: InkWell(
                  onTapDown: (_) {
                    setState(() {
                      cliqueSobre = true;
                    });
                  },
                  onTapUp: (_) {
                    setState(() {
                      cliqueSobre = false;
                    });
                  },
                  onTapCancel: () {
                    setState(() {
                      cliqueSobre = false;
                    });
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Card(
                    color: Colors.white,
                    elevation: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              FeatherIcons.bell,
                              color: cliqueSobre
                                  ? lightColorScheme.outline
                                  : Colors.black,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Sobre as notificações',
                              style: GoogleFonts.lato(
                                fontSize: 16,
                                color: cliqueSobre
                                    ? lightColorScheme.outline
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          FeatherIcons.chevronRight,
                          color: cliqueSobre
                              ? lightColorScheme.outline
                              : Colors.black,
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
                child: InkWell(
                  onTapDown: (_) {
                    setState(() {
                      cliquePerguntas = true;
                    });
                  },
                  onTapUp: (_) {
                    setState(() {
                      cliquePerguntas = false;
                    });
                  },
                  onTapCancel: () {
                    setState(() {
                      cliquePerguntas = false;
                    });
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Card(
                    color: Colors.white,
                    elevation: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              FeatherIcons.helpCircle,
                              color: cliquePerguntas
                                  ? lightColorScheme.outline
                                  : Colors.black,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Perguntas frequentes',
                              style: GoogleFonts.lato(
                                fontSize: 16,
                                color: cliquePerguntas
                                    ? lightColorScheme.outline
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          FeatherIcons.chevronRight,
                          color: cliquePerguntas
                              ? lightColorScheme.outline
                              : Colors.black,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: InkWell(
                  onTapDown: (_) {
                    setState(() {
                      cliqueFaleConosco = true;
                    });
                  },
                  onTapUp: (_) {
                    setState(() {
                      cliqueFaleConosco = false;
                    });
                  },
                  onTapCancel: () {
                    setState(() {
                      cliqueFaleConosco = false;
                    });
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Card(
                    color: Colors.white,
                    elevation: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              FeatherIcons.messageCircle,
                              color: cliqueFaleConosco
                                  ? lightColorScheme.outline
                                  : Colors.black,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Fale conosco',
                              style: GoogleFonts.lato(
                                fontSize: 16,
                                color: cliqueFaleConosco
                                    ? lightColorScheme.outline
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          FeatherIcons.chevronRight,
                          color: cliqueFaleConosco
                              ? lightColorScheme.outline
                              : Colors.black,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: InkWell(
                  onTapDown: (_) {
                    setState(() {
                      cliqueTermosPoliticas = true;
                    });
                  },
                  onTapUp: (_) {
                    setState(() {
                      cliqueTermosPoliticas = false;
                    });
                  },
                  onTapCancel: () {
                    setState(() {
                      cliqueTermosPoliticas = false;
                    });
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Card(
                    color: Colors.white,
                    elevation: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              FeatherIcons.book,
                              color: cliqueTermosPoliticas
                                  ? lightColorScheme.outline
                                  : Colors.black,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Termos e políticas',
                              style: GoogleFonts.lato(
                                fontSize: 16,
                                color: cliqueTermosPoliticas
                                    ? lightColorScheme.outline
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          FeatherIcons.chevronRight,
                          color: cliqueTermosPoliticas
                              ? lightColorScheme.outline
                              : Colors.black,
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
