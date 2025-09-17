// ignore_for_file: non_constant_identifier_names

import 'package:alugueis_app/models/apto.dart';

class Predio {
  final int codPredio;
  final int qtdAndares;
  final String endereco;
  final String nomePredio;
  final Apto? apto;
  const Predio({
    required this.codPredio,
    required this.qtdAndares,
    required this.endereco,
    required this.nomePredio,
    this.apto
  });

  factory Predio.fromJson(Map<String, dynamic> json){
    return Predio(
      codPredio: json['codPredio'],
      qtdAndares: json['qtdAndares'],
      endereco: json['endereco'],
      nomePredio: json['nomePredio'],
      apto: json['apto']
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'codPredio': this.codPredio,
      'qtdAndares': this.qtdAndares,
      'endereco': this.endereco,
      'nomePredio': this.nomePredio,
    };
  }

  factory Predio.init(){
    return Predio(
      codPredio: 0,
      qtdAndares: 0,
      endereco: "",
      nomePredio: "",
    );
  }

  @override
  List<Object?> get props => [
    codPredio,
    qtdAndares,
    endereco,
    nomePredio,
  ];
}