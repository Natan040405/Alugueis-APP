// ignore_for_file: non_constant_identifier_names

class Predio {
  final int codPredio;
  final int qtdAndares;
  final String endereco;
  final String nomePredio;
  const Predio({
    required this.codPredio,
    required this.qtdAndares,
    required this.endereco,
    required this.nomePredio
  });

  factory Predio.fromJson(Map<String, dynamic> json){
    return Predio(
      codPredio: json['codPredio'],
      qtdAndares: json['qtdAndares'],
      endereco: json['Endereco'],
      nomePredio: json['nomePredio'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'codPredio': this.codPredio,
      'qtdAndares': this.qtdAndares,
      'endereco': this.endereco,
      'nomePredio': this.nomePredio,
    };
  }

  factory Predio.init(){
    return Predio(
      codPredio: 0,
      qtdAndares: 0,
      endereco: "",
      nomePredio: "",
    );
  }

  @override
  List<Object?> get props => [
    codPredio,
    qtdAndares,
    endereco,
    nomePredio,
  ];
}