
import 'package:alugueis_app/models/despesa.dart';

class DespesaState {
  final List<Despesa> despesas;
  final Despesa despesa;
  final String result;
  DespesaState({
    required this.despesas,
    required this.despesa,
    required this.result,
  });

  factory DespesaState.init(){
    return DespesaState(
      despesas: [],
      despesa: Despesa.init(), 
      result: '',
    );
  }

  DespesaState copyWith({
    final List<Despesa>? despesas,
    final Despesa? despesa,
    final String? result,
  }){
    return DespesaState(
      despesas: despesas ?? this.despesas,
      despesa: despesa ?? this.despesa,
      result: result ?? this.result,
    );

  }
}