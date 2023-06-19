import 'package:app_library/src/widgets/foto_perfil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/app_bar_return.dart';

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
              const AppBarReturn(),
              const SizedBox(height: 12),
              const FotoPerfil(),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton.filledTonal(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Color(0xFFEDF2F6),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          FeatherIcons.user,
                          size: 18,
                          color: Color(0xFF171923),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nome completo',
                            style: GoogleFonts.lato(
                              color: const Color(0xFF171923),
                            ),
                          ),
                          Text(
                            'Rafael Rocha Silveira',
                            style: GoogleFonts.lato(
                              color: const Color(0xFF757780),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton.filledTonal(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xFFEDF2F6),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      FeatherIcons.edit2,
                      size: 18,
                      color: Color(0xFF171923),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton.filledTonal(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Color(0xFFEDF2F6),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          FeatherIcons.atSign,
                          size: 18,
                          color: Color(0xFF171923),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: GoogleFonts.lato(
                              color: const Color(0xFF171923),
                            ),
                          ),
                          Text(
                            'rafael.silveira37@etec.sp.gov.br',
                            style: GoogleFonts.lato(
                              color: const Color(0xFF757780),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton.filledTonal(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xFFEDF2F6),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      FeatherIcons.edit2,
                      size: 18,
                      color: Color(0xFF171923),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton.filledTonal(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Color(0xFFEDF2F6),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          FeatherIcons.phone,
                          size: 18,
                          color: Color(0xFF171923),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Telefone',
                            style: GoogleFonts.lato(
                              color: const Color(0xFF171923),
                            ),
                          ),
                          Text(
                            '+55 (19) 99665-4546',
                            style: GoogleFonts.lato(
                              color: const Color(0xFF757780),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton.filledTonal(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xFFEDF2F6),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      FeatherIcons.edit2,
                      size: 18,
                      color: Color(0xFF171923),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
