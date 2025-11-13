
import 'package:exemplo_verificacao_rota/pages/home_page.dart';
import 'package:exemplo_verificacao_rota/routes_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo de validacao de rotas',
      onGenerateRoute: RoutesConfig.checkRoute,
      initialRoute: HomePage.routeName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


