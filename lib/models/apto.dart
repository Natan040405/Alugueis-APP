// ignore_for_file: non_constant_identifier_names

class Apto {
  final int codApto;
  final int? codPredio;
  final int andar;
  final int qtdQuartos;
  final int qtdBanheiros;
  final double metrosQuadrados;

  const Apto({
    required this.codApto,
    this.codPredio,
    required this.andar,
    required this.qtdQuartos,
    required this.qtdBanheiros,
    required this.metrosQuadrados,
  });

  factory Apto.init(){
    return Apto(
      codApto: 0,
      codPredio: null,
      andar: 0,
      qtdQuartos: 0,
      qtdBanheiros: 0,
      metrosQuadrados: 0, 
    );
  }

  @override
  List<Object?> get props => [
    codApto,
    codPredio,
    andar,
    qtdQuartos,
    qtdBanheiros,
    metrosQuadrados,
  ];
}