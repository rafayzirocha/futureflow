import 'package:app_library/src/widgets/livro_card.dart';
import 'package:app_library/src/shared/themes/themes.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../repositories/livro_repository.dart';

class LivrosPage extends StatefulWidget {
  const LivrosPage({super.key});

  @override
  State<LivrosPage> createState() => _LivrosPageState();
}

class _LivrosPageState extends State<LivrosPage> {
  final TextEditingController searchController = TextEditingController();
  List<bool> selectedOptions = [false, false, false];

  @override
  Widget build(BuildContext context) {
    final tabela = LivroRepository.tabela;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
          child: Column(
            children: [
              SearchBar(
                trailing: [
                  GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/perfil.jpg'),
                    ),
                  )
                ],
                elevation: const MaterialStatePropertyAll(0),
                backgroundColor:
                    const MaterialStatePropertyAll(Color(0xFFf5f5f5)),
                controller: searchController,
                hintText: 'Pesquise um livro...',
                textStyle: MaterialStatePropertyAll(
                    GoogleFonts.lato(color: lightColorScheme.outline)),
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: lightColorScheme.outline,
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 12)),
              Expanded(
                child: GridView.builder(
                  itemCount: tabela.length,
                  itemBuilder: (_, index) {
                    return LivroCard(
                      livro: tabela[index],
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF002aff),
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
