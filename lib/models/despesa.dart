// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:alugueis_app/repositories/helper/json_serializable.dart';
import 'package:equatable/equatable.dart';

class Despesa extends Equatable implements JsonSerializable{
  final int codDespesa;
  final int? codTipoDespesa;
  final String? nomeTipoDespesa;
  final double vlrTotalDespesa;
  final DateTime dataDespesa;
  final DateTime competenciaMes;
  final int compartilhado;
  const Despesa({
    required this.codDespesa,
    this.codTipoDespesa,
    this.nomeTipoDespesa,
    required this.vlrTotalDespesa,
    required this.dataDespesa,
    required this.competenciaMes,
    required this.compartilhado
  });

  factory Despesa.fromJson(Map<String, dynamic> json){
    return Despesa(
      codDespesa: json['codDespesa'],
      codTipoDespesa: json['codTipoDespesa'],
      nomeTipoDespesa: json['nomeTipoDespesa'],
      vlrTotalDespesa: (json['vlrTotalDespesa'] as num).toDouble(),
      dataDespesa: DateTime.parse(json['dataDespesa']),
      competenciaMes: DateTime.parse(json['competenciaMes']),
      compartilhado: json['compartilhado']
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'codDespesa': codDespesa,
      'codTipoDespesa': codTipoDespesa,
      'vlrTotalDespesa': vlrTotalDespesa,
      'dataDespesa': dataDespesa,
      'competenciaMes': competenciaMes,
      'compartilhado': compartilhado
    };
  }

  factory Despesa.init(){
    return Despesa(
      codDespesa: 0,
      codTipoDespesa: null,
      vlrTotalDespesa: 0.0,
      dataDespesa: DateTime.now(),
      competenciaMes: DateTime.now(),
      compartilhado: 0
    );
  }

  @override
  List<Object?> get props => [
    codDespesa,
    codTipoDespesa,
    vlrTotalDespesa,
    dataDespesa,
    competenciaMes,
    compartilhado
  ];
}