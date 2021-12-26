import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class IndexController {
  void changeIndex(int index);
  PageController get getPage;
}

class IndexControllerImpl extends GetxController implements IndexController {
  @override
  PageController getPage = PageController(initialPage: 0);

  @override
  void changeIndex(int index) {
    print("calledd " + index.toString());
    getPage.jumpToPage(index);
  }
}
