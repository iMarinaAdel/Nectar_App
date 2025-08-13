import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_theme.dart';
import 'package:nectar_app/features/slpash_screen.dart';

void main() {
  runApp(const NectarApp());
}

class NectarApp extends StatelessWidget {
  const NectarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SlpashScreen(),
      theme: AppTheme.lighttheme,
      
    );
  }
}
