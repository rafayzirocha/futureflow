import 'package:flutter/material.dart';

part 'color_schemes.g.dart';

ThemeData get lightTheme => ThemeData(
      useMaterial3: true,
      colorScheme: lightColorScheme,
    );

ThemeData get darkTheme => ThemeData(
      useMaterial3: true,
      colorScheme: darkColorScheme,
    );
