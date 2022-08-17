// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:dirtapp/model/air_result_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:dirtapp/main.dart';
import 'dart:convert';

void main() {
  test('http 통신 테스트', () async {
    Uri url = Uri.parse('http://api.airvisual.com/v2/nearest_city?key=dbf8360b-ce49-4c12-a141-a2c43a0ca016');
    http.Response response = await http.get(url);

    expect(response.statusCode, 200);
   

    AirResult result = AirResult.fromJson(jsonDecode(response.body));
    expect(result.status, 'success');
  });
}
