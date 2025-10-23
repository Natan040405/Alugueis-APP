import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool outlined;

  const LoginButton({super.key, 
    required this.text, 
    required this.onPressed, 
    required this.outlined});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200,
        height: 50,
        child: outlined == false ? 
        ElevatedButton(
          onPressed: onPressed,
          child: Text(text)
          ) : OutlinedButton(
            onPressed: onPressed,
             child: Text(text)
             )
        ) ;
  }
}