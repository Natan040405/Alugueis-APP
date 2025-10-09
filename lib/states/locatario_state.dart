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
    return LocatarioState(
      locatarios: [], 
      locatario: Locatario.init(), 
      result: '',
    );
  }

  LocatarioState copyWith({
    List<Locatario>? locatarios,
    Locatario? locatario,
    String? result,
  }){
    return LocatarioState(
      locatarios: locatarios ?? this.locatarios,
      locatario: locatario ?? this.locatario,
      result: result ?? this.result,
    );
  }
}