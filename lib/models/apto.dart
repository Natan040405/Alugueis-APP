// ignore_for_file: non_constant_identifier_names

import 'package:alugueis_app/repositories/helper/json_serializable.dart';
import 'package:equatable/equatable.dart';

class Apto extends Equatable implements JsonSerializable{
  final int codApto;
  final int? codPredio;
  final int andar;
  final int qtdQuartos;
  final int qtdBanheiros;
  final double metrosQuadrados;
  Apto({
    required this.codApto,
    this.codPredio,
    required this.andar,
    required this.qtdQuartos,
    required this.qtdBanheiros,
    required this.metrosQuadrados,
  });

  factory Apto.fromJson(Map<String, dynamic> json){
    return Apto(
      codApto: json['codApto'],
      codPredio: json['codPredio'],
      andar: json['andar'],
      qtdQuartos: json['qtdQuartos'],
      qtdBanheiros: json['qtdBanheiros'],
      metrosQuadrados: json['metrosQuadrados'],
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'codApto': codApto,
      'codPredio': codPredio,
      'andar': andar,
      'qtdQuartos': qtdQuartos,
      'qtdBanheiros': qtdBanheiros,
      'metrosQuadrados': metrosQuadrados
    };
  }

  factory Apto.init(){
    return Apto(
      codApto: 0,
      codPredio: null,
      andar: 0,
      qtdQuartos: 0,
      qtdBanheiros: 0,
      metrosQuadrados: 0, 
    );
  }

  @override
  List<Object?> get props => [
    codApto,
    codPredio,
    andar,
    qtdQuartos,
    qtdBanheiros,
    metrosQuadrados,
  ];
}