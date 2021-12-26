import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:italo_portfolio/app_module.dart';
import 'package:italo_portfolio/core/main_widget.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const MyApp()));
}
