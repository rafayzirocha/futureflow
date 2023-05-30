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

  @override
  Widget build(BuildContext context) {
    final tabela = LivroRepository.tabela;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
          child: Column(
            children: [
              SearchBar(
                elevation: const MaterialStatePropertyAll(0),
                backgroundColor:
                    MaterialStatePropertyAll(lightColorScheme.surface),
                controller: searchController,
                hintText: 'Pesquise um livro...',
                textStyle: MaterialStatePropertyAll(
                    GoogleFonts.lato(color: lightColorScheme.outline)),
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: lightColorScheme.primary,
                  ),
                ),
              ),
              Row(
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.category_rounded,
                      color: lightColorScheme.primary,
                    ),
                    label: Text(
                      'Categorias',
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: lightColorScheme.outline,
                      ),
                    ),
                  )
                ],
              ),
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
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: lightColorScheme.primary,
        foregroundColor: lightColorScheme.background,
        child: const Icon(Icons.add),
      ),
    );
  }
}
