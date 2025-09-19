import 'dart:convert';

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

  String parseJson<T>(T obj, T Function() toJson){
    final json = jsonEncode(toJson());
    return json;
  }
}