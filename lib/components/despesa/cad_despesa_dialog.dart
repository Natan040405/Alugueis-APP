import 'package:alugueis_app/components/dialog_title.dart';
import 'package:alugueis_app/models/despesa.dart';
import 'package:alugueis_app/store/despesa_store.dart';
import 'package:alugueis_app/store/tipo_despesa_store.dart';
import 'package:flutter/material.dart';

class CadDespesaDialog extends StatefulWidget {
  final DespesaStore store;
  final TipoDespesaStore tipoDespesaStore;
  final Despesa? despesa;
  const CadDespesaDialog({super.key, required this.store, required this.tipoDespesaStore, this.despesa});

  @override
  State<CadDespesaDialog> createState() => _CadDespesaDialogState();
}

class _CadDespesaDialogState extends State<CadDespesaDialog> {
  final codDespesaController = TextEditingController();
  final vlrTotalDespesaController = TextEditingController();
  final dataDespesaController = TextEditingController();
  int? tipoDespesaSelecionado;
  bool existe = false;

  @override
  void initState(){
    super.initState();
    codDespesaController.text = widget.despesa?.codDespesa.toString() ?? "";
    tipoDespesaSelecionado = widget.despesa?.codTipoDespesa ?? null;
    vlrTotalDespesaController.text = widget.despesa?.vlrTotalDespesa.toString() ?? "";
    dataDespesaController.text = widget.despesa?.dataDespesa.toString() ?? "";
    if(widget.despesa != null){
      existe = true;
    }
    widget.tipoDespesaStore.getTiposDespesa();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: DialogTitle(title: "Cadastrar despesa"),
      content: SizedBox(),
    );
  }
}