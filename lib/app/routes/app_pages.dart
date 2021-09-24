
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'package:nobetci_eczane/app/ui/pages/district_page/districts.dart';
import 'package:nobetci_eczane/app/ui/pages/pharmacy_page/pharmacy.dart';

import '../bindings/home_binding.dart';
import '../ui/pages/home_page/home_page.dart';
import '../ui/pages/unknown_route_page/unknown_route_page.dart';
import 'app_routes.dart';

final _defaultTransition = Transition.native;

class AppPages {
  static final unknownRoutePage = GetPage(
    name: AppRoutes.UNKNOWN,
    page: () => UnknownRoutePage(),
    transition: _defaultTransition,
  );

  static final List<GetPage> pages = [
    unknownRoutePage,
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
      transition: _defaultTransition,
    ),
     GetPage(
      name: AppRoutes.DISTRICT,
      page: () => DistrictPage(),
      binding: HomeBinding(),
      transition: _defaultTransition,
    ),
     GetPage(
      name: AppRoutes.PHARMACY,
      page: () => PharmacyPage(),
      binding: HomeBinding(),
      transition: _defaultTransition,
    ),
  ];
}
