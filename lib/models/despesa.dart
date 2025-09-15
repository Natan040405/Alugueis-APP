// ignore_for_file: non_constant_identifier_names

class Despesa {
  final int codDespesa;
  final int codTipoDespesa;
  final double vlrTotalDespesa;
  final DateTime DataDespesa;
  const Despesa({
    required this.codDespesa,
    required this.codTipoDespesa,
    required this.vlrTotalDespesa,
    required this.DataDespesa,
  });
}