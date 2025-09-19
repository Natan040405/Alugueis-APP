import 'package:alugueis_app/models/apto.dart';

class AptoState {
  final List<Apto> aptos;
  final Apto apto;
  final String result;

  AptoState({
    required this.aptos,
    required this.apto,
    required this.result,
  });

  factory AptoState.init(){
    return AptoState(aptos: [], apto: Apto.init(), result: '');
  }

  AptoState copyWith({
    List<Apto>? aptos,
    Apto? apto,
    String? result,
  }
  ){
    return AptoState(
    aptos: aptos ?? this.aptos,
    apto: apto ?? this.apto,
    result: result ?? this.result,
    );
  }
}