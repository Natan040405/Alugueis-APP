import 'package:equatable/equatable.dart';

class Locacao extends Equatable{
  final int codLocacao;
  final int codApto;
  final String cpf;
  final double vlrAluguel;
  final double vlrCausao;
  final DateTime dataInicio;
  final DateTime dataFim;
  const Locacao({
    required this.codLocacao,
    required this.codApto,
    required this.cpf,
    required this.vlrAluguel,
    required this.vlrCausao,
    required this.dataInicio,
    required this.dataFim,
  });

  @override
  List<Object?> get props => [
    codLocacao,
    codApto, 
    cpf, 
    vlrAluguel,
    vlrCausao,
    dataInicio,
    dataFim
  ];
}