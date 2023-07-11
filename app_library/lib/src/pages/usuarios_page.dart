import 'package:app_library/src/widgets/usuario_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../repositories/usuario_repository.dart';

class UsuariosPage extends StatefulWidget {
  const UsuariosPage({super.key});

  @override
  State<UsuariosPage> createState() => _UsuariosPageState();
}

class _UsuariosPageState extends State<UsuariosPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TextEditingController searchController = TextEditingController();
  final tabela = UsuarioRepository.usuarioTabela;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
              child: SearchBar(
                  leading: const Icon(
                    FeatherIcons.search,
                    size: 18,
                    color: Color(0xFF0065FF),
                  ),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
                  elevation: const MaterialStatePropertyAll(0),
                  backgroundColor: const MaterialStatePropertyAll(
                    Color(0xFFEDF2F6),
                  ),
                  controller: searchController,
                  hintText: 'Pesquise por título ou autor(a)...',
                  textStyle: MaterialStatePropertyAll(
                    GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.25,
                    ),
                  )),
            ),
            DefaultTabController(
              length: 2,
              child: TabBar(
                unselectedLabelColor: const Color(0xFF44464F),
                overlayColor: const MaterialStatePropertyAll(Colors.white),
                indicatorColor: const Color(0xFF0065FF),
                labelColor: const Color(0xFF0065FF),
                controller: _tabController,
                tabs: [
                  Tab(
                    child: Text(
                      'Ativos',
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.25,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Inativos',
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: const BouncingScrollPhysics(),
                controller: _tabController,
                children: [
                  ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: tabela.length,
                    itemBuilder: (_, index) {
                      if (tabela[index].status == "Ativo") {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                          child: UsuarioList(
                            usuario: tabela[index],
                          ),
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                  ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: tabela.length,
                    itemBuilder: (_, index) {
                      if (tabela[index].status == "Inativo") {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                          child: UsuarioList(
                            usuario: tabela[index],
                          ),
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF0065FF),
        child: const Icon(
          FeatherIcons.plus,
          size: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
