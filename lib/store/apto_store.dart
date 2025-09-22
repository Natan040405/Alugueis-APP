import 'package:alugueis_app/models/apto.dart';
import 'package:alugueis_app/repositories/apto_repository.dart';
import 'package:alugueis_app/states/apto_state.dart';
import 'package:flutter/widgets.dart';

class AptoStore extends ValueNotifier<AptoState>{
  final repository = AptoRepository();
  AptoStore() : super(AptoState.init());

  Future<void> getAptos() async {
    final aptos = await repository.getAptos();
    value = value.copyWith(aptos: aptos);
  }

  Future<void> addApto(Apto apto) async {
    final aptoNovo = await repository.addApto(apto);
    value = value.copyWith(
      aptos: [...value.aptos, aptoNovo]
    );
  }

  Future<void> deleteApto(int codApto) async {
    await repository.deleteApto(codApto);
    getAptos();
  }

  Future<void> updateApto(Apto aptoAtualizado) async {
    await repository.updateApto(aptoAtualizado);
    getAptos();
  }
}