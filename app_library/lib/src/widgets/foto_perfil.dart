import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class FotoPerfil extends StatelessWidget {
  const FotoPerfil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("images/perfil.jpg"),
          ),
          Positioned(
            right: -16,
            bottom: -5,
            child: IconButton.filledTonal(
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
          ),
        ],
      ),
    );
  }
}
