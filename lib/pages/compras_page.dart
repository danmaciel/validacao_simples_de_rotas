import 'package:flutter/material.dart';

class ComprasPage extends StatelessWidget {
  static final String routeName = "/compras";
  const ComprasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(""),
      ),
      body: Center(child: Text("Pagina de Compras")),
    );
  }
}
