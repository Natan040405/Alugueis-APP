import 'package:alugueis_app/models/predio.dart';
import 'package:alugueis_app/repositories/predio_repository.dart';
import 'package:alugueis_app/states/predio_state.dart';
import 'package:flutter/cupertino.dart';

class PredioStore extends ValueNotifier<PredioState>{
  final repository = PredioRepository();
  PredioStore() : super(PredioState.init());

  Future<void> getPredios() async {
    final predios = await repository.getPredios();
    value = value.copyWith(predios: predios);
  }

  Future<void> addPredio(Predio predio) async {
    Predio predioNovo = await repository.addPredio(predio);
    value = value.copyWith(
      predios: [...value.predios, predioNovo] 
    );
  }

  Future<void> deletePredio(int codPredio) async {
    await repository.deletePredio(codPredio);
    getPredios();
  }

  Future<void> updatePredio(Predio predioAtualizado) async {
    await repository.updatePredio(predioAtualizado);
    getPredios();
  }

  Future<Predio> getPredioById(int? codPredio) async {
    Predio predio = await repository.getPredioById(codPredio);
    return predio;
  }
}