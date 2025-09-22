import 'dart:convert';

import 'package:alugueis_app/repositories/helper/json_serializable.dart';

class RepositoryHelper {
  List<T> parseListT<T>(String jsonRaw, T Function(Map<String, dynamic>) fromJson){
    final List<dynamic> json = jsonDecode(jsonRaw);
    List<T> listParsed = json.map((l) => fromJson(l)).toList();
    return listParsed;
  }

  T parseT<T>(String jsonRaw, T Function(Map<String, dynamic>) fromJson){
    final json = jsonDecode(jsonRaw);
    T parsed = fromJson(json);
    return parsed;
  }

  String parseToJson<T extends JsonSerializable>(T obj){
    final json = jsonEncode(obj.toJson());
    return json;
  }
}