import 'dart:convert';
import 'package:http/http.dart' as http;

class BaseNetwork {
  static BaseNetwork instance = BaseNetwork();
  static final baseUrl = 'https://api.genshin.dev/';

  Future<List<dynamic>> getList(String type) async {
    final String finalUrl = baseUrl + type;

    final response = await http.get(Uri.parse(finalUrl));

    if(response.statusCode == 200) {
      final characterList = jsonDecode(response.body);
      return characterList;
    }
    else {
      throw Exception('Failed to fetch the $type list data');
    }
  }
}