import 'package:dirtapp/api/air_result_api.dart';
import 'package:dirtapp/model/air_result_model.dart';
import 'package:flutter/material.dart';

class AirResultViewModel extends ChangeNotifier {
  final AirResultApi _airResult = AirResultApi();

  AirResultModel _resluts = AirResultModel(aqius: '', aqicn: '', ws: '');

  void fetchAirResult() async {
    _resluts = await _airResult.getAirResult();
    notifyListeners();
  }
}
