

import 'package:nobetci_eczane/app/data/models/pharmacy_model.dart';
import 'package:nobetci_eczane/app/data/provider/repositories/api_request.dart';

class PharmacyProvider {
  void getPharmacyList({
    Function()? beforeSend,
    Function(List<Result> pharmacy)? onSuccess,
    Function(dynamic error)? onError,
    String? ilce,
    String? il
  }) {
    ApiRequest(url: 'https://api.collectapi.com/health/dutyPharmacy?ilce=$ilce&il=$il', data: null).get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        onSuccess!((data['result'] as List).map((postJson) => Result.fromJson(postJson)).toList());
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}
