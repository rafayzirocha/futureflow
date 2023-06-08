import 'package:app_library/src/pages/configuration_page.dart';
import 'package:app_library/src/pages/livros_page.dart';
import 'package:app_library/src/shared/themes/themes.dart';
import 'package:flutter/material.dart';

import 'avisos_page.dart';
import 'favoritos_page.dart';

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
    const ConfigurationPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              activeIcon: Icon(Icons.school_rounded),
              icon: Icon(Icons.school_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.favorite),
              icon: Icon(Icons.favorite_outline),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.forum_rounded),
              icon: Icon(Icons.forum_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.person_rounded),
              icon: Icon(Icons.person_outline),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
