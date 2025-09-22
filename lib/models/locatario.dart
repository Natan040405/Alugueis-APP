// ignore_for_file: unnecessary_this

import 'package:alugueis_app/repositories/helper/json_serializable.dart';
import 'package:equatable/equatable.dart';

class Locatario extends Equatable implements JsonSerializable{
  final int idade;
  final int temPet;
  final int qtdDependentes;
  final String nomeLocatario;
  final String cpf;
  final String enderecoUltimoImovel;
  const Locatario({
    required this.idade,
    required this.temPet,
    required this.qtdDependentes,
    required this.nomeLocatario,
    required this.cpf,
    required this.enderecoUltimoImovel,
  });

  factory Locatario.fromJson(Map<String, dynamic> json){
    return Locatario(
        idade: json['idade'], 
        temPet: json['temPet'], 
        qtdDependentes: json['qtdDependentes'], 
        nomeLocatario: json['nomeLocatario'], 
        cpf: json['cpf'], 
        enderecoUltimoImovel: json['enderecoUltimoImovel']
      );
  }

  Map<String, dynamic> toJson(){
    return {
      'idade': this.idade,
      'temPet': this.temPet,
      'qtdDependentes': this.qtdDependentes,
      'nomeLocatario': this.nomeLocatario,
      'cpf': this.cpf,
      'enderecoUltimoImovel': enderecoUltimoImovel,

    };
  }

  factory Locatario.init(){
    return Locatario(
      idade: 0,
      temPet: 0,
      qtdDependentes: 0,
      nomeLocatario: '',
      cpf: '', 
      enderecoUltimoImovel: '',
    );
  }

  @override
  List<Object?> get props => [
    idade, 
    temPet, 
    qtdDependentes,
    nomeLocatario,
    cpf,
    enderecoUltimoImovel
    ];
}