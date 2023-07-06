import 'dart:convert';

import 'package:homescreen_widget/core/constants/network_constants.dart';
import 'package:homescreen_widget/data/models/words/remote_word_model.dart';
import 'package:http/http.dart' as http;

class RemoteWordService {
  RemoteWordService._();
  static final shared = RemoteWordService._();
  final String _baseUrl = KNetwork.baseUrl;

  Future<RemoteWordModel?> getWords({required String word}) async {
    var url = Uri.parse("$_baseUrl/$word");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return RemoteWordModel.fromJson(data[0]);
    } else {
      print('İstek başarisiz oldu. Hata kodu: ${response.statusCode}');
    }
  }
}
