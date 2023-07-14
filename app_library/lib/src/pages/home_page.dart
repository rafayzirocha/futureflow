import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'livros_page.dart';
import 'usuarios_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    const UsuariosPage(),
    const UsuariosPage(),
    const UsuariosPage(),
    const UsuariosPage(),
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
      extendBody: true,
      bottomNavigationBar: DotNavigationBar(
        //dotIndicatorColor: Colors.transparent,
        splashColor: Colors.transparent,
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
        itemPadding: const EdgeInsets.all(13),
        marginR: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
        paddingR: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        currentIndex: currentIndex,
        onTap: onTap,
        enableFloatingNavBar: true,
        enablePaddingAnimation: true,
        items: [
          DotNavigationBarItem(
            icon: const Icon(
              FeatherIcons.home,
              size: 20,
            ),
            selectedColor: const Color(0xFF0065FF),
            unselectedColor: Colors.grey.shade500,
          ),
          DotNavigationBarItem(
            icon: const Icon(
              FeatherIcons.book,
              size: 20,
            ),
            selectedColor: const Color(0xFF0065FF),
            unselectedColor: Colors.grey.shade500,
          ),
          DotNavigationBarItem(
            icon: const Icon(
              FeatherIcons.user,
              size: 20,
            ),
            selectedColor: const Color(0xFF0065FF),
            unselectedColor: Colors.grey.shade500,
          ),
          DotNavigationBarItem(
            icon: const Icon(
              FeatherIcons.messageCircle,
              size: 20,
            ),
            selectedColor: const Color(0xFF0065FF),
            unselectedColor: Colors.grey.shade500,
          ),
        ],
      ),
    );
  }
}
