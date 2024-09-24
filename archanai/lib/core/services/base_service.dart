import 'dart:async';
import 'dart:convert';
import 'package:archanai/core/logger/index.dart';
import 'package:archanai/core/model/meta.dart';
import 'package:http/http.dart';
import 'package:http/retry.dart';



class BaseService {
  var https = RetryClient(Client());

  Future<Meta> httpGet(String url) async {
    Logger.debug("GET Url", url);
    try {
      final response =
      await https.get(Uri.parse(url));
      if(response.statusCode == 200) {
        Logger.debug("GET response", response.body);
        return Meta.fromJson(jsonDecode(response.body));
      }else{
        return Meta();
      }
    } catch (e) {
      throw Exception(e);
    }
  }


}
