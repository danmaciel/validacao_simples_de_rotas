import 'package:flutter/material.dart';

class HistoricoPage extends StatelessWidget {
  static final String routeName = "/historico";
  const HistoricoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(""),
      ),
      body: Center(child: Text("Pagina de historico")),
    );
  }
}
