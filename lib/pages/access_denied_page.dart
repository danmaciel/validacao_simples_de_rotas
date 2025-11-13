import 'package:flutter/material.dart';

class AccessDeniedPage extends StatelessWidget {
  static final String routeName = "/acces_denied";
  const AccessDeniedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Voce nao esta autorizado a acessar o conteudo")),
    );
  }
}
