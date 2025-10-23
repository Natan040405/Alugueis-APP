import 'package:alugueis_app/components/dialog_title.dart';
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
      title: DialogTitle(title: 'Cadastrar Apartamento'),
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
            ),
            const SizedBox(height: 16,),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: qtdBanheirosController,
                    decoration: InputDecoration(labelText: "Quantidade Banheiros*"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  )
                ),
                const SizedBox(width: 16,),
                Expanded(
                  child: TextField(
                    controller: qtdQuartosController,
                    decoration: InputDecoration(labelText: "Quantidade Quartos"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  )
                ),
                const SizedBox(width: 16,),
                Expanded(
                  child: TextField(
                    controller: metrosQuadradosController,
                    decoration: InputDecoration(labelText: "Metros Quadrados"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  )
                )
              ],
            )
          ],
        )
      ),
      actions: [
        TextButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: const Text("cancelar")
        ),
        ElevatedButton(
          onPressed: () {
            Apto novoApto = Apto(
              codApto: int.tryParse(codAptoController.text) ?? 0,
              codPredio: predioSelecionado,
              andar: int.tryParse(andarController.text) ?? 0,
              qtdBanheiros: int.tryParse(qtdBanheirosController.text) ?? 0,
              qtdQuartos: int.tryParse(qtdQuartosController.text) ?? 0,
              metrosQuadrados: int.tryParse(metrosQuadradosController.text) ?? 0,
            );
            existe ?
            widget.store.updateApto(novoApto)
            : widget.store.addApto(novoApto);
            Navigator.pop(context);
          },
          child: const Text("Salvar")
        )
      ],
    );
  }
}