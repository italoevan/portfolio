import 'package:flutter/material.dart';
import 'package:italo_portfolio/modules/home/presenter/about/about_page.dart';
import 'package:italo_portfolio/modules/home/presenter/index/index_controller.dart';

class Body extends StatelessWidget {
  final IndexController controller;
  const Body({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
      child: PageView(
        controller: controller.getPage,
        
        children: [
          Container(
            child: Text("First Container"),
          ),
          const AboutPage()
        ],
      ),
    );
  }
}
