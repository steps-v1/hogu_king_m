import 'dart:async';

import 'package:hogu_king_m/io/network_util.dart';
import 'package:hogu_king_m/models/play.dart';
import 'package:hogu_king_m/sign_in.dart';

class RestDataSource {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "http://172.30.1.30:10081/hoguking/v1.0";
  static final PLAY_URL = BASE_URL + "/plays";

  Future<List<Play>> getPlays(int offset) async {
    String idToken = await getIdToken();

    return _netUtil.get(PLAY_URL + "?limit=20&offset=$offset", headers: {
      "content-type": "application/json; charset=utf-8",
      "Authorization": idToken
    }).then((dynamic res) {
      print(res.toString());
      if (res["error"] != null) {
        throw new Exception(res["error_msg"]);
      }

      return (res["plays"] as List).map((i) => Play.fromJson(i)).toList();
    });
  }
}
