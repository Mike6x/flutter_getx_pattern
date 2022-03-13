import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/store/config.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class CategoryPage extends GetView<CategoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("catagory".tr),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                ConfigStore.to.isFirstOpen = !ConfigStore.to.isFirstOpen;
              },
              icon: Icon(Icons.logout_rounded))
        ],
      ),
      body: NewsPageList(),
    );
  }
}
