import 'dart:convert';

import 'package:dirtapp/model/air_result_model.dart';
import 'package:http/http.dart' as http;

class AirResultApi{
  Future<AirResultModel> getAirResult() async {
    Uri url = Uri.parse('http://api.airvisual.com/v2/nearest_city?key=dbf8360b-ce49-4c12-a141-a2c43a0ca016');
    http.Response response = await http.get(url);
    
    String jsonString = response.body;

    Map<String, dynamic> json =jsonDecode(jsonString);



   
    String aqius = json['data']['current']['pollution']['aqius'] as String;
    String aqicn = json['data']['current']['pollution']['aqcicn']as String;
    String ws = json['data']['current']['weather']['ws']as String;




    return AirResultModel(aqius: aqius, aqicn: aqicn, ws: ws);
  }}