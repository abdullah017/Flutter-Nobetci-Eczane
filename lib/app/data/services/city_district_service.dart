import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:nobetci_eczane/app/data/models/city_district_model.dart';

class CityDistrictService {
  Future<List<CitysDistricts>> getPosts() async {
    final _localPath = "assets/jsons/city_district.json";

    // 1) JSON Array[] To String:
    final _response = await rootBundle.loadString(_localPath);

    /// 2) String To List<dynamic>:
    final List _decoded = jsonDecode(_response);

    /// 3-A) List<dynamic> To Iterable<Post>:
    final _iterable = _decoded.map((e) => CitysDistricts.fromJson(e));

    /// 3-B) Iterable<Post> To List<Post>:
    final _readEvents = List<CitysDistricts>.from(_iterable);

    /// _readPosts'u döndür.
    return _readEvents;
  }
}
