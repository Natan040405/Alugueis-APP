import 'package:alugueis_app/models/tipo_despesa.dart';

class TipoDespesaState {
  final List<TipoDespesa> tiposDespesa;
  final TipoDespesa tipoDespesa;
  final String result;
  TipoDespesaState({
    required this.tiposDespesa,
    required this.tipoDespesa,
    required this.result,
  });

  factory TipoDespesaState.init(){
    return TipoDespesaState(
      tiposDespesa: [],
      tipoDespesa: TipoDespesa.init(), 
      result: '',
    );
  }

  TipoDespesaState copyWith({
    final List<TipoDespesa>? tiposDespesa,
    final TipoDespesa? tipoDespesa,
    final String? result,
  }){
    return TipoDespesaState(
      tiposDespesa: tiposDespesa ?? this.tiposDespesa,
      tipoDespesa: tipoDespesa ?? this.tipoDespesa,
      result: result ?? this.result,
    );

  }
}