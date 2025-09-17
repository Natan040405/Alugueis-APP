// ignore_for_file: prefer_interpolation_to_compose_strings

import 'dart:convert';

import 'package:alugueis_app/models/locatario.dart';
import 'package:http/http.dart';

class LocatarioRepository {
  final client = Client();
  final uriLocatario = Uri.parse('https://localhost:7052/api/Locatarios').toString();
  Future<List<Locatario>> getLocatarios() async {
    final response = await client.get(Uri.parse(uriLocatario));
    final jsonRaw = response.body;
    return parseLocatarios(jsonRaw);
  }

  Future addLocatario(Locatario locatario) async {
    String json = parseJson(locatario);
    final response = await client.post(
      Uri.parse(uriLocatario), 
      headers: {
      "Content-Type": "application/json; charset=UTF-8",
      },
      body: json
      );
      final jsonRaw = response.body;
      return parseLocatario(jsonRaw);
  }

  Future deleteLocatario(String cpf) async{
    await client.delete(Uri.parse(uriLocatario + cpf));
  }

  Future updateLocatario(Locatario locatarioAtualizado) async {
    String json = parseJson(locatarioAtualizado);
    final response = await client.put(
      Uri.parse(uriLocatario),
      headers: {
      "Content-Type": "application/json; charset=UTF-8",
      },
      body: json 
    );
    final jsonRaw = response.body;
    return parseLocatario(jsonRaw);
  }

  List<Locatario> parseLocatarios(String jsonRaw){
    final json = jsonDecode(jsonRaw);
    final locatarios = (json as List).map((loc) => Locatario.fromJson(loc)).toList();
    return locatarios;
  }

  Locatario parseLocatario(String jsonRaw){
    final json = jsonDecode(jsonRaw);
    final locatario = Locatario.fromJson(json);
    return locatario;
  }

  String parseJson(Locatario locatario){
    String json = jsonEncode(locatario.toJson());
    return json;
  }
}