import 'dart:convert';

import 'package:alugueis_app/repositories/helper/repository_helper.dart';
import 'package:http/http.dart';

class UsuarioRepository {
  final repositoryHelper = RepositoryHelper();
  final client = Client();
  final uriUsuario = 'https://localhost:7052/api/Usuario/';

  Future<bool> ExisteUsuario() async {
    final response = await client.get(Uri.parse(uriUsuario + 'existe'));
    if (response.statusCode == 200) {
      return response.body.toLowerCase() == 'true';
    }
    return true;
  }
}