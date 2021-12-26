import 'package:flutter/material.dart';
import 'package:italo_portfolio/modules/home/presenter/about/about_page.dart';
import 'package:italo_portfolio/modules/home/presenter/index/index_controller.dart';
import 'package:italo_portfolio/modules/home/presenter/start/start_page.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../contact/contact_page.dart';

class Body extends StatelessWidget {
  final IndexController controller;
  const Body({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ResponsiveBuilder(
      builder: (context, information) {
        return Container(
          decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          padding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal:
                  information.isMobile ? size.width * 0.04 : size.width * 0.02),
          child: PageView(
            controller: controller.getPage,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              StartPage(
                isMobile: information.isMobile,
              ),
              AboutPage(
                isMobile: information.isMobile,
              ),
              ContactPage(
                isMobile: information.isMobile,
              )
            ],
          ),
        );
      },
    );
  }
}
