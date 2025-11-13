

import 'package:exemplo_verificacao_rota/auth.dart';
import 'package:exemplo_verificacao_rota/pages/access_denied_page.dart';
import 'package:exemplo_verificacao_rota/pages/compras_page.dart';
import 'package:exemplo_verificacao_rota/pages/historico_page.dart';
import 'package:exemplo_verificacao_rota/pages/home_page.dart';
import 'package:flutter/material.dart';

class RoutesConfig{
  static MaterialPageRoute? checkRoute(RouteSettings settings){

    if(!Auth.isAuthenticate()){
      return MaterialPageRoute(
        builder: (context) => AccessDeniedPage(),
      );
    }

    if(settings.name == HomePage.routeName){
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => HomePage(),
      );
    }

    if(settings.name == ComprasPage.routeName){
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => ComprasPage(),
      );
    }

    if(settings.name == HistoricoPage.routeName){
      return MaterialPageRoute(
        builder: (context) => HistoricoPage(),
      );
    }

    return null;
  }
}