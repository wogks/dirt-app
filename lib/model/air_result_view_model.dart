import 'package:dirtapp/api/air_result_api.dart';
import 'package:dirtapp/model/air_result_model.dart';
import 'package:flutter/material.dart';

class AirResultViewModel extends ChangeNotifier{
  final AirResultApi _airApi = AirResultApi();

  AirResultModel airmodel = AirResultModel(aqicn: 0, aqius: 0, ws: 0);

  // bool isLoading = 
  AirResultViewModel(){
    fetchAirResult();
  }

  void fetchAirResult () async {
    airmodel = await _airApi.getAirResult();
    
    notifyListeners();

  }
}