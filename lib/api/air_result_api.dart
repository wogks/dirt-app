import 'dart:convert';

import 'package:dirtapp/model/air_result_model.dart';
import 'package:http/http.dart' as http;

class AirResultApi{
  Future<AirResultModel> getAirResult() async {
    Uri url = Uri.parse('http://api.airvisual.com/v2/nearest_city?key=dbf8360b-ce49-4c12-a141-a2c43a0ca016');
    http.Response response = await http.get(url);
    
    String jsonString = response.body;

    Map<String, dynamic> json =jsonDecode(jsonString);

    num aqius = json['data']['current']['pollution']['aqius'];
    num aqicn = json['data']['current']['pollution']['aqicn'];
    num ws = json['data']['current']['weather']['ws'];

    return AirResultModel(aqicn: aqicn, aqius: aqius, ws: ws);




   


    
    



    
    
  }}

  A() {
    
  }