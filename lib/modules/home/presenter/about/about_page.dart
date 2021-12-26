import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  final bool isMobile;

  const AboutPage({
    Key? key,
    required this.isMobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text("Salve"),
      ),
    );
  }
}
