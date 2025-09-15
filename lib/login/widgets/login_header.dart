// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Imobilith',
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.bold
              ),
            ),
          Text(
            'Bem vindo ao seu sistema de alugueis',
            style: TextStyle(
              color: Color(0xFF3C3F54),
              fontSize: 15,
              ),
            ),
        ],
      ),
    );
  }
}