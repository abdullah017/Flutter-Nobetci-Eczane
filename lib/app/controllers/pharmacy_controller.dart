import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nobetci_eczane/app/data/models/pharmacy_model.dart';
import 'package:nobetci_eczane/app/data/provider/local/get_pharmacy.dart';

class PharmacyController extends GetxController {
  final datacount = GetStorage();
  RxList<Result>? pharmacyList;
  bool isLoading = true;

  @override
  void onInit() {
    PharmacyProvider().getPharmacyList(
      onSuccess: (data) {
        pharmacyList!.addAll(data);
        isLoading = false;
      },
      il: datacount.read("il"),
      ilce: datacount.read("ilce"),
      onError: (error) {
        isLoading = false;
        print("HATA YAKALANDI **** $error");
      },
    );
    super.onInit();
  }
}
