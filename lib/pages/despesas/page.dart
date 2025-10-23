import 'package:alugueis_app/components/despesa/cad_despesa_dialog.dart';
import 'package:alugueis_app/components/despesa/despesa_list.dart';
import 'package:alugueis_app/store/despesa_store.dart';
import 'package:alugueis_app/store/tipo_despesa_store.dart';
import 'package:flutter/material.dart';

class DespesaPage extends StatelessWidget {
  final store = DespesaStore();
  final tipoDespesaStore = TipoDespesaStore();
  DespesaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Locatários'),
      ),
      body: Container(
        child: Column(
          children: [
            DespesaList(store: store, tipoDespesaStore: tipoDespesaStore,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            context: context,
            builder: (_) => CadDespesaDialog(store: store, tipoDespesaStore: tipoDespesaStore,),
          );
        },
        child: const Icon(Icons.add)
      )
    );
  }
}