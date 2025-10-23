import 'package:alugueis_app/models/despesa.dart';
import 'package:alugueis_app/repositories/despesa_repository.dart';
import 'package:alugueis_app/states/despesa_state.dart';
import 'package:flutter/cupertino.dart';

class DespesaStore  extends ValueNotifier<DespesaState>{
  final repository = DespesaRepository();
  DespesaStore() : super(DespesaState.init());

  Future<void> getDespesas()async{
    final despesas = await repository.getDespesas();
    value = value.copyWith(despesas: despesas);
  }

  Future<void> addDespesa(Despesa despesa) async {
    Despesa despesaNovo = await repository.addDespesa(despesa);
    value = value.copyWith(
      despesas: [...value.despesas, despesaNovo]
    );
  }

  Future<void> deleteDespesa(int codDespesa) async {
    await repository.deleteDespesa(codDespesa);
    getDespesas();
  }

  Future<void> updateDespesa(Despesa despesaAtualizado) async {
    await repository.updateDespesa(despesaAtualizado);
    getDespesas();
  }
}