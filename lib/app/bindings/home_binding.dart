import 'package:get/get.dart';
import 'package:nobetci_eczane/app/controllers/home_controller.dart';
import 'package:nobetci_eczane/app/controllers/pharmacy_controller.dart';
import 'package:nobetci_eczane/app/data/services/city_district_service.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<PharmacyController>(() => PharmacyController());
    Get.put<CityDistrictService>(CityDistrictService());

    // Get.put<HomeController>(HomeController());
  }
}
