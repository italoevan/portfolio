import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:italo_portfolio/domain/entities/header_action.dart';
import 'package:italo_portfolio/modules/home/presenter/index/body/body.dart';
import 'package:italo_portfolio/modules/home/presenter/index/index_controller.dart';
import 'package:italo_portfolio/shared/components/headers/generic_header.dart';

class IndexPage extends StatefulWidget {
  final IndexController controller;
  IndexPage({Key? key, required this.controller}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: GenericHeader(
          padding: MediaQuery.of(context).size.width * 0.04,
          title: "Portfólio",
          actions: [
            ActionWidget(
                headerHeight: 60, action: HeaderAction("About", () {})),
            ActionWidget(headerHeight: 60, action: HeaderAction("About", () {}))
          ],
        ),
      ),
      body: Body(),
    );
  }
}
