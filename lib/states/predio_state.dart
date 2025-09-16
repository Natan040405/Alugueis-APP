import 'package:alugueis_app/models/predio.dart';

class PredioState {
  final List<Predio> predios;
  final Predio predio;
  final String result;
  PredioState({
    required this.predios,
    required this.predio,
    required this.result
  });

  factory PredioState.init(){
    return PredioState(predios: [], predio: Predio.init(), result: '');
  }

  PredioState copyWith({
    List<Predio>? predios,
    Predio? predio,
    String? result,
  }){
    return PredioState(
      predios: predios ?? this.predios, 
      predio: predio ?? this.predio, 
      result: result ?? this.result
    );
  }
}