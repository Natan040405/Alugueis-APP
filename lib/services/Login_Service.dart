import 'dart:convert';

import 'package:http/http.dart';

class LoginService {
  final client = Client(); 
  Future<bool> ExisteUsuario() async {
    final response = await client.get(Uri.parse('https://sua-api.com/usuario/existe'));
        if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['existe'];
    }

    return true;
  }
}