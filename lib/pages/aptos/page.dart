import 'package:alugueis_app/components/apto/apto_list.dart';
import 'package:alugueis_app/components/apto/cad_apto_dialog.dart';
import 'package:alugueis_app/store/apto_store.dart';
import 'package:alugueis_app/store/predio_store.dart';
import 'package:flutter/material.dart';

class AptoPage extends StatelessWidget {
  final store = AptoStore();
  final predioStore = PredioStore();
  AptoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aptos'),
      ),
      body: Container(
        child: Column(
          children: [
            AptoList(store: store, predioStore: predioStore,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            context: context
            ,builder: (_) => CadAptoDialog(store: store, predioStore: predioStore,)
          );
        },
        child: Icon(Icons.add)
      ),
    );
  }
}