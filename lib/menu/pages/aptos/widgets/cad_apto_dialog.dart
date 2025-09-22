import 'package:alugueis_app/models/apto.dart';
import 'package:alugueis_app/states/predio_state.dart';
import 'package:alugueis_app/store/apto_store.dart';
import 'package:alugueis_app/store/predio_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class CadAptoDialog extends StatefulWidget {
  final AptoStore store;
  final PredioStore predioStore;
  final Apto? apto;
  const CadAptoDialog({super.key, required this.store, this.apto, required this.predioStore});

  @override
  State<CadAptoDialog> createState() => _CadAptoDialogState();
}

class _CadAptoDialogState extends State<CadAptoDialog> {
  final codAptoController = TextEditingController();
  final andarController = TextEditingController();
  final qtdBanheirosController = TextEditingController();
  final qtdQuartosController = TextEditingController();
  final metrosQuadradosController = TextEditingController();
  int? predioSelecionado;
  bool existe = false;

  @override
  void initState(){
    super.initState();
    codAptoController.text = widget.apto?.codApto.toString() ?? "";
    andarController.text = widget.apto?.andar.toString() ?? "";
    predioSelecionado = widget.apto?.codPredio ?? null;
    qtdBanheirosController.text = widget.apto?.qtdBanheiros.toString() ?? "";
    qtdQuartosController.text = widget.apto?.qtdQuartos.toString() ?? "";
    metrosQuadradosController.text = widget.apto?.metrosQuadrados.toString() ?? "";
    if(widget.apto != null){
      existe = true;
    }
    widget.predioStore.getPredios();
  }


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Cadastrar Apartamento"),
          IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.close))
        ],
      ),
      content: SizedBox(
        width: 750,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: codAptoController,
                    decoration: InputDecoration(labelText: "codApto*"),

                  ),
                ),
                const SizedBox(width: 16,),
                Expanded(
                  child: TextField(
                    controller: andarController,
                    decoration: InputDecoration(labelText: "andar*"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                const SizedBox(width: 16,),
                Expanded(
                  child: ValueListenableBuilder(
                    valueListenable: widget.predioStore,
                    builder: (context, state, _) {
                      return DropdownButtonFormField<int>(
                        value: predioSelecionado,
                        items: state.predios.map((p) {
                          return DropdownMenuItem(
                            value: p.codPredio,
                            child: Text(p.codPredio.toString() + " - " + p.nomePredio),
                          ); 
                        }).toList(),
                        onChanged: (value){
                          setState(() {
                            predioSelecionado = value;
                          });
                        },
                        decoration: InputDecoration(labelText: "Predio*"),
                      );
                    }
                  ) 
                )
              ]
            )
          ],
        )
      ),
    );
  }
}