import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl: 'https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl: 'https://images.hdqwalls.com/wallpapers/landscape-fantasy-art-2j.jpg',
            imageTitle: 'Hermoso paisaje de fantasía',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl: 'https://htdraw.com/wp-content/uploads/2020/12/Fantasy-landscape-Spray-Painting-2020.jpg',
            imageTitle: 'Hermoso paisaje en spray',
          ),
        ],
      )
    );
  }
}