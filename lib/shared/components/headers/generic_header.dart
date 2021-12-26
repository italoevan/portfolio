import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:italo_portfolio/domain/entities/header_action.dart';

class GenericHeader extends StatelessWidget {
  final double? padding;
  final String title;
  final List<ActionWidget>? actions;

  const GenericHeader({
    Key? key,
    required this.title,
    this.padding,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Padding(
        padding: EdgeInsets.only(left: padding ?? 0),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      actions: actions,
    );
  }
}

class ActionWidget extends StatefulWidget {
  final HeaderAction action;
  final double headerHeight;
  ActionWidget({Key? key, required this.action, required this.headerHeight})
      : super(key: key);

  @override
  State<ActionWidget> createState() => _ActionWidgetState();
}

class _ActionWidgetState extends State<ActionWidget> {
  Color currentColor = Colors.white;
  double size = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15),
      height: widget.headerHeight,
      child: Center(
        child: MouseRegion(
          child: Text(
            widget.action.title,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: currentColor),
          ),
          onEnter: (v) {
            print("Passou aq");
            setState(() {
              currentColor = Colors.green;
              size = 25;
            });
          },
          onExit: (v) {
            print("Saiu aq");
            setState(() {
              currentColor = Colors.white;
              size = 20;
            });
          },
        ),
      ),
    );
  }
}
