import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nobetci_eczane/app/controllers/home_controller.dart';
import 'package:nobetci_eczane/app/ui/layouts/main/widgets/main_layout_view.dart';

class DistrictPage extends GetView<HomeController> {
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
                  itemCount: _controller.ilceler!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: InkWell(
                        onTap: () {
                          print(
                              'SEÇTİĞİN İL ADI ***** ${_controller.ilceler![index].ilceAdi.toString()}');
                          datacount.write("ilce",
                              _controller.ilceler![index].ilceAdi.toString());
                              Get.toNamed('/pharmacy');
                        },
                        child: ListTile(
                          title: Text(
                            _controller.ilceler![index].ilceAdi.toString(),
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
