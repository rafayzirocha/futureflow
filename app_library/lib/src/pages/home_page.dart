import 'package:app_library/src/pages/livros_page.dart';
import 'package:app_library/src/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'avisos_page.dart';
import 'favoritos_page.dart';
import 'perfil_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    const LivrosPage(),
    const FavoritosPage(),
    const AvisosPage(),
    const PerfilPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: pages[currentIndex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            unselectedFontSize: 0,
            selectedFontSize: 0,
            type: BottomNavigationBarType.fixed,
            onTap: onTap,
            currentIndex: currentIndex,
            selectedItemColor: lightColorScheme.primary,
            unselectedItemColor: lightColorScheme.outline,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.book),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.heart),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.bell),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.user),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
