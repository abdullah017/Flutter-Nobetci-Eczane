import 'package:nobetci_eczane/app/controllers/pharmacy_controller.dart';

import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PharmacyPage extends GetView<PharmacyController> {
  final _controller = Get.find<PharmacyController>();

  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
        child: Center(
      child: Obx(
        () => _controller.isLoading
            ? ListView.builder(
                shrinkWrap: true,
                itemCount: _controller.pharmacyList!.length,
                itemBuilder: (BuildContext context, index) {
                  return Text(_controller.pharmacyList![index].name.toString());
                })
            : CircularProgressIndicator(),
      ),
    ));
  }
}
