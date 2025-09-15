import 'package:alugueis_app/menu/menu_details.dart';
import 'package:alugueis_app/menu/pages/aptos/page.dart';
import 'package:alugueis_app/menu/pages/despesas/page.dart';
import 'package:alugueis_app/menu/pages/home/page.dart';
import 'package:alugueis_app/menu/pages/locatarios/page.dart';
import 'package:alugueis_app/menu/pages/predios/page.dart';
import 'package:alugueis_app/menu/pages/tipos_despesa/page.dart';
import 'package:flutter/material.dart';

class MenuItems {
  List<MenuDetails> items = [
    MenuDetails(title: "Home", icon: Icons.home, page: HomePage()),
    MenuDetails(title: "Aptos", icon: Icons.apartment, page: AptoPage()),
    MenuDetails(title: "Despesas", icon: Icons.money_off, page: DespesaPage()),
    MenuDetails(title: "Locatarios", icon: Icons.people, page: LocatarioPage()),
    MenuDetails(title: "Tipos Despesa", icon: Icons.monetization_on, page: TiposDespesaPage()),
    MenuDetails(title: "Predios", icon: Icons.location_city, page: PredioPage()),
  ];
}