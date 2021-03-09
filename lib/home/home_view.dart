import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pixelfield_app/common/constants.dart';
import 'package:pixelfield_app/items/item_controller.dart';


class HomeView extends GetView<BasicController> {

  @override
  Widget build(context) {
    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
      appBar: AppBar(
        title: Obx(
          () => Text("Clicks: ${controller.count}"),
        ),
      ),

      // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
      body: Center(
        child: RaisedButton(
          child: Text("Go to Other"),
          onPressed: () => Get.toNamed(Routes.ITEMS),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: controller.increment,
      ),
    );
  }
}

