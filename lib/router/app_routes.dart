
import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: borrar home
    MenuOption(route: 'home', icon: Icons.home, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list, name: 'Listview Tipo 1', screen: const ListView1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list_alt, name: 'Listview Tipo 2', screen: const ListView2Screen()),
    MenuOption(route: 'alert', icon: Icons.add_alarm, name: 'Alertas', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.credit_card, name: 'Cards', screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    
    final Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    
    return appRoutes;
  }

  /*static Map<String, Widget Function(BuildContext)> routes = {
    'home'     : (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'alert'    : (BuildContext context) => const AlertScreen(),
    'card'     : (BuildContext context) => const CardScreen()
  };*/


  static Route<dynamic> onGenerateRoute (settings){
    return MaterialPageRoute(
              builder: (context) => const AlertScreen()
            );
  }
  
}