import 'package:alugueis_app/menu/pages/predios/widgets/cad_predio_dialog.dart';
import 'package:alugueis_app/menu/pages/predios/widgets/predio_list.dart';
import 'package:alugueis_app/store/predio_store.dart';
import 'package:flutter/material.dart';

class PredioPage extends StatelessWidget {
  final store = PredioStore();
  PredioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Predios'),
      ),
      body: Container(
        child: Column(
          children: [
            PredioList(store: store)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            context: context, 
            builder: (_) => CadPredioDialog(store: store),
          );
        },
        child: const Icon(Icons.add)
      ),
    );
  }
}