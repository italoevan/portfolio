import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:italo_portfolio/core/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      initialRoute: '/',
    ).modular();
  }
}
