// ignore_for_file: avoid_print

import 'package:alugueis_app/models/locatario.dart';
import 'package:alugueis_app/repositories/locatario_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('converter json em uma lista de locatario', (){
    final repository = LocatarioRepository();
    final locatarios = repository.parseLocatarios(json);
    print(locatarios);
  });

  test('converter locatario em json', () {
    final locatario = Locatario(
      idade: 1,
      temPet: 0,
      qtdDependentes: 2,
      nomeLocatario: 'Natan',
      cpf: '111111111111', 
      enderecoUltimoImovel: 'teste teste',
    );
    final repository = LocatarioRepository();
    final json = repository.addLocatario(locatario);
    print(json);
  });
}


const json = 
'''
[
  {
    "idade": 18,
    "temPet": 1,
    "qtdDependentes": 0,
    "nomeLocatario": "Natan Felipe Valente",
    "cpf": "07410831910",
    "enderecoUltimoImovel": "Rua Guilherme Koehler, 84",
    "locacoes": null
  },
  {
    "idade": 19,
    "temPet": 1,
    "qtdDependentes": 0,
    "nomeLocatario": "Ruan Pasquali",
    "cpf": "11111111111",
    "enderecoUltimoImovel": "Rua Guilherme Koehler, 84",
    "locacoes": null
  }
]
''';