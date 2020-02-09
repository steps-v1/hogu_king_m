import 'dart:async';

import 'package:hogu_king_m/io/network_util.dart';
import 'package:hogu_king_m/models/user.dart';

class RestDataSource {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "http://192.168.0.8:10081/hoguking/v1.0";
  static final LOGIN_URL = BASE_URL + "/tokens";

  Future<User> login(String id, String password) {
    return _netUtil.post(LOGIN_URL, headers: {"content-type": "application/json; charset=utf-8"},
        body: {"id": id, "password": password}).then((dynamic res) {
      print(res.toString());
      if (res["error"]) throw new Exception(res["error_msg"]);
      return new User.map(res);
    });
  }
}
