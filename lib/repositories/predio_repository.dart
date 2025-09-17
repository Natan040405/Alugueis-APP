import 'dart:convert';

import 'package:alugueis_app/models/predio.dart';
import 'package:http/http.dart';

class PredioRepository {
  final client = Client();
  final uriPredio = Uri.parse('https://localhost:7052/api/Predios').toString();

  Future<List<Predio>> getPredios() async {
  final response = await client.get(Uri.parse(uriPredio));
  final jsonRaw = response.body;
  return parsePredios(jsonRaw);
  }

  Future<Predio> addPredio(Predio predio) async {
    final json = parseJson(predio);
    final response = await client.post(
      Uri.parse(uriPredio),
      headers: {"Content-Type": "application/json; charset=UTF-8"},
      body: json
    );
    final jsonRaw = response.body;
    return parsePredio(jsonRaw);
  }

  Future<void> deletePredio(int codPredio) async {
    await client.delete(Uri.parse(uriPredio+codPredio.toString()));
  }

  Future<Predio> updatePredio(Predio predioAtualizado) async {
    final json = parseJson(predioAtualizado);
    final response = await client.post(
      Uri.parse(uriPredio),
      headers: {"Content-Type": "application/json; charset=UTF-8"},
      body: json
    );
    final jsonRaw = response.body;
    return parsePredio(jsonRaw);
  }

  Predio parsePredio(String jsonRaw){
    final json = jsonDecode(jsonRaw);
    final predio = Predio.fromJson(json);
    return predio;
  }

  String parseJson(Predio predio){
    final json = jsonEncode(predio.toJson());
    return json;
  }

  List<Predio> parsePredios(String jsonRaw){
    final json = jsonDecode(jsonRaw);
    final predios = (json as List).map((p) => Predio.fromJson(p)).toList();
    return predios;
  }
}