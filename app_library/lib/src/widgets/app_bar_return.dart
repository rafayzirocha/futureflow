import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class AppBarReturn extends StatelessWidget {
  const AppBarReturn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton.filledTonal(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color(0xFFEDF2F6),
            ),
          ),
          onPressed: () {},
          icon: const Icon(
            FeatherIcons.chevronLeft,
            size: 18,
            color: Color(0xFF171923),
          ),
        ),
        IconButton.filledTonal(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color(0xFFEDF2F6),
            ),
          ),
          onPressed: () {},
          icon: const Icon(
            FeatherIcons.check,
            size: 18,
            color: Color(0xFF171923),
          ),
        ),
      ],
    );
  }
}
