import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pixelfield_app/common/theme.dart';
import 'package:pixelfield_app/pf_app/controller.dart';
import 'package:pixelfield_app/pf_app/view.dart';


Future<void> main() async {

  Get.put<PfAppController>(PfAppController());

  runApp(
    GetMaterialApp(
      theme: appTheme,
      smartManagement: SmartManagement.full,
      home: PfAppView(),
    )
  );
}
