import 'package:alugueis_app/models/usuario.dart';

class UsuarioState {
  final List<Usuario> usuarios;
  final Usuario usuario;
  final String result;

  UsuarioState({
    required this.usuarios,
    required this.usuario, 
    required this.result
  });

  factory UsuarioState.init(){
    return UsuarioState(usuarios: [], usuario: Usuario.init(), result: '');
  }

  UsuarioState copyWith({
    List<Usuario>? usuarios,
    Usuario? usuario,
    String? result,
  })
  {
    return UsuarioState(
      usuarios: usuarios ?? this.usuarios,
      usuario: usuario ?? this.usuario,
      result: result ?? this.result,
    );
  }
}