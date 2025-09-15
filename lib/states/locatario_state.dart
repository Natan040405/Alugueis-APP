import 'package:alugueis_app/models/locatario.dart';

class LocatarioState {
  final List<Locatario> locatarios;
  final Locatario locatario;
  final String result;

  LocatarioState({
    required this.locatario,
    required this.locatarios,
    required this.result
    });

  factory LocatarioState.init(){
    return LocatarioState(locatarios: [], result: '', locatario: Locatario.init());
  }

  LocatarioState copyWith({
    List<Locatario>? locatarios,
    String? result,
    Locatario? locatario,
  }){
    return LocatarioState(
      locatarios: locatarios ?? this.locatarios,
      result: result ?? this.result,
      locatario: locatario ?? this.locatario,
    );
  }

}