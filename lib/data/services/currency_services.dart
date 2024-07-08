import 'dart:convert';

import 'package:apk/data/repositories/currency_repository.dart';
import "package:http/http.dart" as http;

class CurrencyApiService implements CurrencyRepository {
  final String baseUrl =
      'https://v6.exchangerate-api.com/v6/34cbe9577c3f4f43878f8e8b/latest/USD';
  final String baseUrlX =
      'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest';

  @override
  Future<Map<String, dynamic>> fetchCurrencies() async {
    Map<String, String> reqHeaders = {
      "X-CMC_PRO_API_KEY": "1cf262c5-ceb1-4f78-820a-8dc03aaf7331"
    };
    final response = await http.get(Uri.parse(baseUrlX), headers: reqHeaders);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
