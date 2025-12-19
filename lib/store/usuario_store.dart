import 'package:alugueis_app/repositories/usuario_repository.dart';
import 'package:alugueis_app/states/usuario_state.dart';
import 'package:flutter/widgets.dart';

class UsuarioStore extends ValueNotifier<UsuarioState>{
  final repository = UsuarioRepository();
  UsuarioStore() : super(UsuarioState.init());

  Future<bool> ExisteUsuario() async {
    final existe = await repository.ExisteUsuario();
    return existe;
  }
}