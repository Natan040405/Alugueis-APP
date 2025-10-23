// ignore_for_file: non_constant_identifier_names, deprecated_member_use, avoid_unnecessary_containers

import 'package:alugueis_app/components/locatario/cad_locatario_dialog.dart';
import 'package:alugueis_app/components/locatario/locatario_list.dart';
import 'package:alugueis_app/store/locatario_store.dart';
import 'package:flutter/material.dart';

class LocatarioPage extends StatelessWidget {
  final store = LocatarioStore();

  LocatarioPage({super.key});
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
      title: Text('Locatários'),
      ),
      body: Container(
        child: Column(
          children: [
            LocatarioList(store: store),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            context: context,
            builder: (_) => CadLocatarioDialog(store: store),
          );
        },
        child: const Icon(Icons.add)
      )
    );
  }
}