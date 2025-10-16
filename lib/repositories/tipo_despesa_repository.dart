import 'package:alugueis_app/models/tipo_despesa.dart';
import 'package:alugueis_app/repositories/helper/repository_helper.dart';
import 'package:http/http.dart';

class TipoDespesaRepository {
  final repositoryHelper = RepositoryHelper();
  final client = Client();
  final uriTipoDespesa = 'https://localhost:7052/api/TipoDespesa/';

  Future<List<TipoDespesa>> getTiposDespesa() async {
    final response = await client.get(Uri.parse(uriTipoDespesa));
    final jsonRaw = response.body;
    return repositoryHelper.parseListT<TipoDespesa>(jsonRaw, TipoDespesa.fromJson);
  }

  Future<TipoDespesa> addTipoDespesa(TipoDespesa tipoDespesa) async {
    final json = repositoryHelper.parseToJson(tipoDespesa);
    final response = await client.post(
      Uri.parse(uriTipoDespesa),
      headers: {'Content-Type': 'application/json'},
      body: json
    );
    final jsonRaw = response.body;
    return repositoryHelper.parseT<TipoDespesa>(jsonRaw, TipoDespesa.fromJson);
  }

  Future<void> deleteTipoDespesa(int codTipoDespesa) async {
    await client.delete(Uri.parse(uriTipoDespesa + codTipoDespesa.toString()));
  }

  Future<TipoDespesa> updateTipoDespesa(TipoDespesa tipoDespesaAtualizado) async {
    final json = repositoryHelper.parseToJson(tipoDespesaAtualizado);
    final response = await client.put(
      Uri.parse(uriTipoDespesa),
      headers: {'Content-Type': 'application/json'},
      body: json
    );
    final jsonRaw = response.body;
    return repositoryHelper.parseT<TipoDespesa>(jsonRaw, TipoDespesa.fromJson);
  }
}