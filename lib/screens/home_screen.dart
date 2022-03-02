import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/screens/listview1_screen.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        separatorBuilder: (_,__) => const Divider(), 
        itemBuilder: (context, index) => ListTile(
          title: Text(menuOptions[index].name),
          leading: Icon(menuOptions[index].icon, color: AppTheme.primary),
          onTap: () {
            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ),
      )
    );
  }
}