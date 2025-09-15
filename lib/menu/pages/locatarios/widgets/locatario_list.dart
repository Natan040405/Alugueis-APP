// ignore_for_file: annotate_overrides, avoid_print

import 'package:alugueis_app/components/datagrid_delete_button.dart';
import 'package:alugueis_app/components/datagrid_edit_button.dart';
import 'package:alugueis_app/menu/pages/locatarios/widgets/cad_locatario_dialog.dart';
import 'package:alugueis_app/store/locatario_store.dart';
import 'package:flutter/material.dart';

class LocatarioList extends StatefulWidget {
  final LocatarioStore store;
  const LocatarioList({super.key, required this.store});

  @override
  State<LocatarioList> createState() => _LocatarioListState();
}

class _LocatarioListState extends State<LocatarioList> {

  void initState(){
    super.initState();
    widget.store.addListener(_listener);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.store.getLocatarios();
    });
  }

  void _listener() {
    setState(() {
      
    });
  }

  void dispose(){
    widget.store.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return ValueListenableBuilder(
      valueListenable: widget.store,
      builder: (context, state, _) {
        return Expanded(
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: DataTable(
                columnSpacing: 30,
                headingRowColor: WidgetStateProperty.all(Colors.grey[200]),
                columns: const[
                  DataColumn(label: Text('')),
                  DataColumn(label: Text('Nome')),
                  DataColumn(label: Text('Idade')),
                  DataColumn(label: Text('CPF')),
                  DataColumn(label: Text('Ultimo Endereço'))
                ],
                rows: state.locatarios.map((loc) {
                  return DataRow(
                    cells: [
                      DataCell(Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DatagridEditButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (_) => CadLocatarioDialog(store: widget.store, locatario: loc),
                              );
                            },
                          ),
                          DatagridDeleteButton(
                              onPressed: () {
                                widget.store.deleteLocatario(loc.cpf);
                            },
                          )
                        ],
                      )),
                      DataCell(Text(loc.nomeLocatario)),
                      DataCell(Text(loc.idade.toString())),
                      DataCell(Text(loc.cpf)),
                      DataCell(Text(loc.enderecoUltimoImovel)),
                    ]
                  );
                }).toList(),
              ),
            ),
          )
        );
      }
    );
  }
}