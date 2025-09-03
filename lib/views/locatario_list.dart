import 'dart:developer';

import 'package:alugueis_app/Data/dummy_locatarios.dart';
import 'package:flutter/material.dart';

class LocatarioList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locatarios = DUMMY_LOCATARIOS.values.toList();
    return Scaffold(
      appBar: AppBar(
      title: Text('Locatários'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: 20,
          headingRowColor: MaterialStateProperty.all(Colors.grey[200]),
          columns: const[
            DataColumn(label: Text('Nome')),
            DataColumn(label: Text('Idade')),
            DataColumn(label: Text('CPF')),
            DataColumn(label: Text('Ultimo Endereço'))
          ],
          rows: locatarios.map((loc) {
            return DataRow(
              cells: [
                DataCell(Text(loc.nomeLocatario)),
                DataCell(Text(loc.idade.toString())),
                DataCell(Text(loc.cpf)),
                DataCell(Text(loc.enderecoUltimoImovel)),
              ]
            );
          }).toList(),
        ),
      ),
    );
  }
}