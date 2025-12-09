import 'package:alugueis_app/components/login/login_button.dart';
import 'package:alugueis_app/components/menu/menu.dart';
import 'package:alugueis_app/services/Login_Service.dart';
import 'package:flutter/material.dart';

class LoginMenu extends StatefulWidget {
  const LoginMenu({super.key});

  @override
  State<LoginMenu> createState() => _LoginMenuState();
}

class _LoginMenuState extends State<LoginMenu> {
  bool showRegister = false;

    void initState() {
    super.initState();
    _checkFirstAccess();
  }

  void _checkFirstAccess() async {
    final service = LoginService();
    // bool exists = await service.ExisteUsuario();
    setState(() {
      showRegister = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showRegister) LoginButton(
            text: 'Cadastrar',
            onPressed: () {},
            outlined: true,
           ),
          if (showRegister) SizedBox(width: 20),
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