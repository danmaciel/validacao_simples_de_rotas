
import 'package:exemplo_verificacao_rota/pages/compras_page.dart';
import 'package:exemplo_verificacao_rota/pages/historico_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String routeName = "/homepage";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


enum MainPageMenuItem{
  COMPRAS,
  HISTORICO
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Home Page"),
        actions: [
          PopupMenuButton<MainPageMenuItem>(
            tooltip: "Selecione a opcao",
            icon: Icon(Icons.menu),
            onSelected: (MainPageMenuItem value) {
              switch(value){
                case MainPageMenuItem.COMPRAS:
                  Navigator.of(context).pushNamed(ComprasPage.routeName);
                  break;
                case MainPageMenuItem.HISTORICO:
                  Navigator.of(context).pushNamed(HistoricoPage.routeName);
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<MainPageMenuItem>>[
                PopupMenuItem<MainPageMenuItem>(
                  value: MainPageMenuItem.COMPRAS,
                  child: Text("Compras"),
                ),
                PopupMenuItem<MainPageMenuItem>(
                  value: MainPageMenuItem.HISTORICO,
                  child: Text(" Historico"),
                )
              ];
            },
          )
        ],
      ),
      body: Center(
        child: Text("Home Page")
      ),
    );
  }
}