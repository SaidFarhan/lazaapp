import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lazaapp/models/model.dart';

class Repository {
  final _baseUrl = 'https://6486d1b0beba6297278f3924.mockapi.io/name';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Product> product = it.map((e) => Product.fromJson(e)).toList();
        return product;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
