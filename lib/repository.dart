import 'dart:convert';

import 'package:basic_fetching_api/model.dart';
import 'package:http/http.dart' as http;

class Repository {
  final _baseUrl =
      'https://630869be722029d9ddce3d96.mockapi.io/ridho/basic/mahasiswa';

  Future<Mahasiswa> fetchMahasiswa() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      return Mahasiswa.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load Mahasiswa');
    }
  }
}
