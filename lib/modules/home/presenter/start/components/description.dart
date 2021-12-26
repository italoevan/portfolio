import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "lib/modules/home/assets/wave.png",
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.2,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(1000)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Image.asset("lib/modules/home/assets/me.png")),
              ))
        ],
      ),
    );
  }
}
