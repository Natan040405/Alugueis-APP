import 'package:alugueis_app/repositories/helper/json_serializable.dart';
import 'package:equatable/equatable.dart';

class TipoDespesa extends Equatable implements JsonSerializable{
  final int codTipoDespesa;
  final String nomeTipoDespesa;
  final int compartilhado;
  TipoDespesa({
    required this.codTipoDespesa,
    required this.nomeTipoDespesa,
    required this.compartilhado,
  });

  factory TipoDespesa.fromJson(Map<String, dynamic> json){
    return TipoDespesa(
      codTipoDespesa: json["codTipoDespesa"],
      nomeTipoDespesa: json["nomeTipoDespesa"],
      compartilhado: json["compartilhado"],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      "codTipoDespesa": codTipoDespesa,
      "nomeTipoDespesa": nomeTipoDespesa,
      "compartilhado": compartilhado,
    };
  }

  factory TipoDespesa.init(){
    return TipoDespesa(
      codTipoDespesa: 0,
      nomeTipoDespesa: "",
      compartilhado: 0,
    );
  }

  @override
  List<Object?> get props => [
    codTipoDespesa,
    nomeTipoDespesa,
    compartilhado,
  ];
}