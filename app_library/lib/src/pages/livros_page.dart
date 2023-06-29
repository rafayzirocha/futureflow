import 'package:app_library/src/repositories/emprestimo_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  final tabelaEmprestimo = EmprestimoRepository.tabelaEmprestimo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton.filledTonal(
                          style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                            backgroundColor: MaterialStatePropertyAll(
                              Color(0xFFEDF2F6),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            FeatherIcons.barChart,
                            color: Color(0xFF0065FF),
                            size: 18,
                          ),
                        ),
                        const SizedBox(
                            width: 8), // Espaçamento entre o ícone e o texto
                        Text(
                          'DashBoard',
                          style: GoogleFonts.jost(
                            color: const Color(0xFF171923),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Visão Geral',
                    style: GoogleFonts.jost(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    FilledButton(
                      style: const ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xFFEDF2F6)),
                        foregroundColor:
                            MaterialStatePropertyAll(Color(0xFF0065FF)),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Icon(
                              FeatherIcons.book,
                              size: 20,
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '12',
                                  style: GoogleFonts.jost(
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Livros Cadastrados',
                                  style: GoogleFonts.jost(
                                    fontSize: 14,
                                    color: const Color(0xFF757780),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    FilledButton(
                      style: const ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xFFEDF2F6)),
                        foregroundColor:
                            MaterialStatePropertyAll(Color(0xFF0065FF)),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Icon(
                              FeatherIcons.user,
                              size: 20,
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '300',
                                  style: GoogleFonts.jost(
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Usuários Cadastrados',
                                  style: GoogleFonts.jost(
                                    fontSize: 14,
                                    color: const Color(0xFF757780),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Empréstimos',
                        style: GoogleFonts.jost(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Selecionar período',
                        style: GoogleFonts.jost(
                          color: const Color(0xff0065ff),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Wrap(
                    spacing: 8.0,
                    children: [
                      FilledButton(
                        style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFFEDF2F6)),
                          foregroundColor:
                              MaterialStatePropertyAll(Color(0xFF0065FF)),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(
                                FeatherIcons.checkCircle,
                                size: 20,
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '20',
                                    style: GoogleFonts.jost(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'Ativos',
                                    style: GoogleFonts.jost(
                                      fontSize: 14,
                                      color: const Color(0xFF757780),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      FilledButton(
                        style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFFEDF2F6)),
                          foregroundColor:
                              MaterialStatePropertyAll(Color(0xFF0065FF)),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(
                                FeatherIcons.thumbsDown,
                                size: 20,
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '5',
                                    style: GoogleFonts.jost(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'Pendentes',
                                    style: GoogleFonts.jost(
                                      fontSize: 14,
                                      color: const Color(0xFF757780),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      FilledButton(
                        style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFFEDF2F6)),
                          foregroundColor:
                              MaterialStatePropertyAll(Color(0xFF0065FF)),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(
                                FeatherIcons.thumbsUp,
                                size: 20,
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '75',
                                    style: GoogleFonts.jost(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'Concluídos',
                                    style: GoogleFonts.jost(
                                      fontSize: 14,
                                      color: const Color(0xFF757780),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      FilledButton(
                        style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFFEDF2F6)),
                          foregroundColor:
                              MaterialStatePropertyAll(Color(0xFF0065FF)),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(
                                FeatherIcons.trendingUp,
                                size: 20,
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '100',
                                    style: GoogleFonts.jost(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'Total Geral',
                                    style: GoogleFonts.jost(
                                      fontSize: 14,
                                      color: const Color(0xFF757780),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Prêmios',
                        style: GoogleFonts.jost(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Selecionar período',
                        style: GoogleFonts.jost(
                          color: const Color(0xff0065ff),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: FilledButton(
                        style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFFEDF2F6)),
                          foregroundColor:
                              MaterialStatePropertyAll(Color(0xFF0065FF)),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    FeatherIcons.award,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Arthur Aparecido Marquesi Santana',
                                        style: GoogleFonts.jost(
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        'Rato de Biblioteca',
                                        style: GoogleFonts.jost(
                                          fontSize: 14,
                                          color: const Color(0xFF757780),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '10',
                                    style: GoogleFonts.jost(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'Livros',
                                    style: GoogleFonts.jost(
                                      fontSize: 14,
                                      color: const Color(0xFF757780),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
