import 'package:alugueis_app/menu/pages/tipos_despesa/widgets/cad_tipo_despesa_dialog.dart';
import 'package:alugueis_app/menu/pages/tipos_despesa/widgets/tipos_despesa_list.dart';
import 'package:alugueis_app/store/tipo_despesa_store.dart';
import 'package:flutter/material.dart';

class TiposDespesaPage extends StatelessWidget {
  final store = TipoDespesaStore();
  TiposDespesaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipos de Despesa'),
      ),
      body: Container(
        child: Column(
          children: [
            TiposDespesaList(store: store),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            context: context, 
            builder: (_) => CadTipoDespesaDialog(store: store)
          );
        },
        child: const Icon(Icons.add)
      ),
    );
  }
}