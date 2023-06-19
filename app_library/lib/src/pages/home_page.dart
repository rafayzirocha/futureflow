import 'package:app_library/src/pages/livros_page.dart';
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
        bottomNavigationBar: NavigationBar(
          height: 60,
          backgroundColor: Colors.white,
          elevation: 0,
          indicatorColor: const Color(0xFFEDF2F6),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: currentIndex,
          onDestinationSelected: onTap,
          destinations: const [
            NavigationDestination(
              icon: Icon(
                FeatherIcons.book,
                color: Color(0xFF171923),
                size: 18,
              ),
              selectedIcon: Icon(
                FeatherIcons.book,
                color: Color(0xFF002AFF),
                size: 18,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(
                FeatherIcons.heart,
                color: Color(0xFF171923),
                size: 18,
              ),
              selectedIcon: Icon(
                FeatherIcons.heart,
                color: Color(0xFF002AFF),
                size: 18,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(
                FeatherIcons.bell,
                color: Color(0xFF171923),
                size: 18,
              ),
              selectedIcon: Icon(
                FeatherIcons.bell,
                color: Color(0xFF002AFF),
                size: 18,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(
                FeatherIcons.user,
                color: Color(0xFF171923),
                size: 18,
              ),
              selectedIcon: Icon(
                FeatherIcons.user,
                color: Color(0xFF002AFF),
                size: 18,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
