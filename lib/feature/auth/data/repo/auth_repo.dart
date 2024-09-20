import 'dart:convert';
import 'dart:developer';

import 'package:bookia_app/core/constants/api_constants.dart';
import 'package:bookia_app/feature/auth/data/model/response/login_response/login_response.dart';
import 'package:bookia_app/feature/auth/data/repo/auth_endpoint.dart';
import 'package:bookia_app/feature/auth/data/model/request/login_model_params.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  static Future<bool> login(LoginModelParams params) async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + AuthEndpoint.login);
      var response = await http.post(url, body: params.toJson());
      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        var model = LoginResponse.fromJson(jsonResponse);
        var pref = await SharedPreferences.getInstance();
        pref.setString('token', model.data!.token??'');
        return true;
      } else {
        return false;
      }
    } on Exception catch (e) {
      log(e.toString());
      return false;
    }
  }
}
