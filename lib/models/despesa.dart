// ignore_for_file: non_constant_identifier_names

import 'package:alugueis_app/repositories/helper/json_serializable.dart';
import 'package:equatable/equatable.dart';

class Despesa extends Equatable implements JsonSerializable{
  final int codDespesa;
  final int? codTipoDespesa;
  final String? nomeTipoDespesa;
  final double vlrTotalDespesa;
  final DateTime dataDespesa;
  const Despesa({
    required this.codDespesa,
    this.codTipoDespesa,
    this.nomeTipoDespesa,
    required this.vlrTotalDespesa,
    required this.dataDespesa,
  });

  factory Despesa.fromJson(Map<String, dynamic> json){
    return Despesa(
      codDespesa: json['codDespesa'],
      codTipoDespesa: json['codTipoDespesa'],
      nomeTipoDespesa: json['nomeTipoDespesa'],
      vlrTotalDespesa: json['vlrTotalDespesa'],
      dataDespesa: json['dataDespesa']
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'codDespesa': codDespesa,
      'codTipoDespesa': codTipoDespesa,
      'vlrTotalDespesa': vlrTotalDespesa,
      'dataDespesa': dataDespesa
    };
  }

  factory Despesa.init(){
    return Despesa(
      codDespesa: 0,
      codTipoDespesa: null,
      vlrTotalDespesa: 0.0,
      dataDespesa: DateTime.now()
    );
  }

  @override
  List<Object?> get props => [
    codDespesa,
    codTipoDespesa,
    vlrTotalDespesa,
    dataDespesa,
  ];
}