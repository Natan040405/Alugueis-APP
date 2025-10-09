// ignore_for_file: non_constant_identifier_names

import 'package:alugueis_app/models/apto.dart';
import 'package:alugueis_app/repositories/helper/json_serializable.dart';
import 'package:equatable/equatable.dart';

class Predio extends Equatable implements JsonSerializable{
  final int codPredio;
  final int qtdAndares;
  final String endereco;
  final String nomePredio;
  final List<Apto>? aptos;
  Predio({
    required this.codPredio,
    required this.qtdAndares,
    required this.endereco,
    required this.nomePredio,
    this.aptos
  });

  factory Predio.fromJson(Map<String, dynamic> json){
    return Predio(
      codPredio: json['codPredio'],
      qtdAndares: json['qtdAndares'],
      endereco: json['endereco'],
      nomePredio: json['nomePredio'],
      aptos: json['aptos']
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'codPredio': this.codPredio,
      'qtdAndares': this.qtdAndares,
      'endereco': this.endereco,
      'nomePredio': this.nomePredio,
      'aptos': this.aptos
    };
  }

  factory Predio.init(){
    return Predio(
      codPredio: 0,
      qtdAndares: 0,
      endereco: "",
      nomePredio: "",
      aptos: null,
    );
  }

  @override
  List<Object?> get props => [
    codPredio,
    qtdAndares,
    endereco,
    nomePredio,
    aptos,
  ];
}