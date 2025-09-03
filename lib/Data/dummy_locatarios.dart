import '../models/locatario.dart';

const DUMMY_LOCATARIOS = {
  '1': Locatario(
    idade: 28,
    temPet: 1,
    qtdDependentes: 0,
    nomeLocatario: 'João da Silva',
    cpf: '123.456.789-00',
    enderecoUltimoImovel: 'Rua das Flores, 123 - São Paulo/SP',
  ),
  '2': Locatario(
    idade: 35,
    temPet: 0,
    qtdDependentes: 2,
    nomeLocatario: 'Maria Oliveira',
    cpf: '987.654.321-00',
    enderecoUltimoImovel: 'Av. Brasil, 500 - Rio de Janeiro/RJ',
  ),
  '3': Locatario(
    idade: 22,
    temPet: 0,
    qtdDependentes: 0,
    nomeLocatario: 'Lucas Pereira',
    cpf: '111.222.333-44',
    enderecoUltimoImovel: 'Rua Central, 45 - Belo Horizonte/MG',
  ),
  '4': Locatario(
    idade: 40,
    temPet: 1,
    qtdDependentes: 3,
    nomeLocatario: 'Ana Souza',
    cpf: '555.666.777-88',
    enderecoUltimoImovel: 'Rua das Palmeiras, 789 - Curitiba/PR',
  ),
};