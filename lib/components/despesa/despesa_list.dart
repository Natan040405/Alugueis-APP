import 'package:alugueis_app/components/datagrid_delete_button.dart';
import 'package:alugueis_app/components/datagrid_edit_button.dart';
import 'package:alugueis_app/components/despesa/cad_despesa_dialog.dart';
import 'package:alugueis_app/store/despesa_store.dart';
import 'package:alugueis_app/store/tipo_despesa_store.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DespesaList extends StatefulWidget {
  final DespesaStore store;
  final TipoDespesaStore tipoDespesaStore;
  const DespesaList({super.key, required this.store, required this.tipoDespesaStore});

  @override
  State<DespesaList> createState() => _DespesaListState();
}

class _DespesaListState extends State<DespesaList> {

  void initState(){
    super.initState();
    widget.store.getDespesas();
  }

  void _listener(){
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
      builder: (context, state, _){
        return Expanded(
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: DataTable(
                columnSpacing: 30,
                headingRowColor: WidgetStateProperty.all(Colors.grey[200]),
                columns: const [
                  DataColumn(label: Text('')),
                  DataColumn(label: Text('Codigo')),
                  DataColumn(label: Text('Codigo Tipo Despesa')),
                  DataColumn(label: Text('Valor Despesa')),
                  DataColumn(label: Text('Data'))
                ],
                rows: state.despesas.map((despesa) {
                  return DataRow(
                    cells: [
                      DataCell(
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            DatagridEditButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (_) => CadDespesaDialog(store: widget.store,
                                                                despesa: despesa, 
                                                                tipoDespesaStore: widget.tipoDespesaStore,
                                                                )
                                );
                              },
                            ),
                            DatagridDeleteButton(
                              onPressed: () {
                                widget.store.deleteDespesa(despesa.codDespesa);
                              },
                            )
                          ],
                        )
                      ),
                      DataCell(Text(despesa.codDespesa.toString())),
                      DataCell(Text(despesa.codTipoDespesa.toString() + ' - ' + despesa.nomeTipoDespesa.toString())),
                      DataCell(Text(despesa.vlrTotalDespesa.toString())),
                      DataCell(Text(despesa.dataDespesa.toString())),
                    ]
                  );
                }).toList(),
              )
            ),
          )
        );
      }
    );
  }
}