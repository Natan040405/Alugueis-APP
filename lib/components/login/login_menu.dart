
// ignore_for_file: avoid_unnecessary_containers

import 'package:alugueis_app/components/menu/menu.dart';
import 'package:alugueis_app/components/login/login_button.dart';
import 'package:flutter/material.dart';

class LoginMenu extends StatelessWidget {
  const LoginMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoginButton(
            text: 'Cadastrar',
            onPressed: () {},
            outlined: true
           ),
           SizedBox(width: 20),
          LoginButton(
            text: 'Entrar',
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Menu()),
              );
            }, 
            outlined: false
          )
        ],
      )
    );
  }
}