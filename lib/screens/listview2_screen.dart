import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  
  final options = const['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];

  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2')
      ),
      body: ListView.separated(
        itemCount: options.length,
        separatorBuilder: (_, __) => const Divider(), 
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.ac_unit),
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: (){
            final game = options[index];
            print(game);
          }
        )
      )
    );
  }
}