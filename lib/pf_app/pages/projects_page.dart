import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pixelfield_app/pf_app/controller.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(context) {
    return GetX<PfAppController>(
      builder: (controller) {
        String message = controller.index == 0 ? "" : "Projects page";
        return Center(child: Text(message));
      },
    );
  }
}
