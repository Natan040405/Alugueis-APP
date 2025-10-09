import 'package:alugueis_app/repositories/helper/json_serializable.dart';
import 'package:equatable/equatable.dart';

class TipoDespesa extends Equatable implements JsonSerializable{
  final int codTipo;
  final String nomeTipo;
  final int compartilhado;
  TipoDespesa({
    required this.codTipo,
    required this.nomeTipo,
    required this.compartilhado,
  });

  factory TipoDespesa.fromJson(Map<String, dynamic> json){
    return TipoDespesa(
      codTipo: json["codTipo"],
      nomeTipo: json["nomeTipo"],
      compartilhado: json["compartilhado"],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      "codTipo": codTipo,
      "nomeTipo": nomeTipo,
      "compartilhado": compartilhado,
    };
  }

  factory TipoDespesa.init(){
    return TipoDespesa(
      codTipo: 0,
      nomeTipo: "",
      compartilhado: 0,
    );
  }

  @override
  List<Object?> get props => [
    codTipo,
    nomeTipo,
    compartilhado,
  ];
}