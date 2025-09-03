

import 'package:flutter/material.dart';

class Locatario {
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
}