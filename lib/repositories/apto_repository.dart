import 'package:alugueis_app/models/apto.dart';
import 'package:http/http.dart';

class AptoRepository {
  final client = Client(); 
  final uriApto = 'https://localhost:7052/api/Aptos/';

  // Future<List<Apto>> addApto() async {
  //   final response = await client.get(Uri.parse(uriApto));
  //   final jsonRaw = response.body;

  // }
}