import 'package:flutter/material.dart';
import 'package:italo_portfolio/modules/home/presenter/start/components/description.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StartPage extends StatelessWidget {
  final bool isMobile;

  const StartPage({
    Key? key,
    required this.isMobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
           Description()
        ],
      ),
    );
  }
}
