import 'package:get_storage/get_storage.dart';

import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  final _controller = Get.find<HomeController>();
  final datacount = GetStorage();
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
      child: Center(
        child: Obx(
          () => _controller.isLoading.isFalse
              ? ListView.builder(
                  shrinkWrap: true,
                  itemCount: _controller.events.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: InkWell(
                        onTap: () {
                          print(
                              'SEÇTİĞİN İL ADI ***** ${_controller.events[index].ilAdi.toString()}');
                          datacount.write(
                              "il", _controller.events[index].ilAdi.toString());
                          _controller.ilceler =
                              controller.events[index].ilceler;
                          Get.toNamed("/distirct");
                        },
                        child: ListTile(
                          leading: Text(
                            _controller.events[index].plakaKodu.toString(),
                          ),
                          title: Text(
                            _controller.events[index].ilAdi.toString(),
                          ),
                        ),
                      ),
                    );
                  })
              : CircularProgressIndicator(),
        ),
      ),
    );
  }
}
