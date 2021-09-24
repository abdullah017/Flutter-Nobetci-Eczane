import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:nobetci_eczane/app/data/provider/local/get_pharmacy.dart';

class PharmacyController extends GetxController {
  final datacount = GetStorage();
  RxList pharmacyList = [].obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    PharmacyProvider().getPharmacyList(
      onSuccess: (data) {
        showLoading();
        pharmacyList.addAll(data);
        hideLoading();
      },
      il: datacount.read("il"),
      ilce: datacount.read("ilce"),
      onError: (error) {
        showLoading();
        print("HATA YAKALANDI **** $error");
      },
    );
    super.onInit();
  }

  void showLoading() => isLoading.toggle();

  void hideLoading() => isLoading.toggle();
}
