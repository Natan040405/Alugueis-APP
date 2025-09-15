// ignore_for_file: non_constant_identifier_names

class Apto {
  final int codApto;
  final int? codPredio;
  final int andar;
  final int qtdQuartos;
  final int qtdBanheiros;
  final double MetrosQuadrados;

  const Apto({
    required this.codApto,
    this.codPredio,
    required this.andar,
    required this.qtdQuartos,
    required this.qtdBanheiros,
    required this.MetrosQuadrados,
  });
}