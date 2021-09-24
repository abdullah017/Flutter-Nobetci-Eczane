import 'package:get/get.dart';
import 'package:nobetci_eczane/app/data/models/city_district_model.dart';
import 'package:nobetci_eczane/app/data/services/city_district_service.dart';

class HomeController extends GetxController {
  /// Constructor
  HomeController() {
    _eventService = Get.find<CityDistrictService>();
    getEvents();
  }

  CityDistrictService? _eventService;
  late RxList<CitysDistricts> events;
  List<Ilceler>? ilceler;

  RxBool isLoading = false.obs;

  Future<List<CitysDistricts>> getEvents() async {
    showLoading();
    final _result = await _eventService!.getPosts();
    hideLoading();
    events = _result.obs;

    return events;
  }


  Future<List<Ilceler>?> getDistrict() async {
    showLoading();
    final _result = await _eventService!.getPosts();
    hideLoading();
    ilceler = _result.obs as RxList<Ilceler>?;
    return ilceler;
  }

  void showLoading() => isLoading.toggle();

  void hideLoading() => isLoading.toggle();
}
