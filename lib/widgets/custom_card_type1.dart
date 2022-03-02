import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Soy un título'),
            subtitle: Text('Ad exercitation do occaecat esse labore irure dolore ullamco. Nulla do Lorem et ex consequat ex occaecat. Veniam dolore quis Lorem mollit. Pariatur ex quis excepteur est do. Incididunt ullamco aliquip id ipsum Lorem ut cillum mollit laborum.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Cancel')
                ),
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Ok')
                )
              ],
            ),
          )
        ],
      )
    );
  }
}