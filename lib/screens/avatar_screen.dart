import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              child: Text('DMG'),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
           maxRadius: 120,
           backgroundImage: NetworkImage('https://www.adninforma.com/wp-content/uploads/2020/05/mauricio-gonzalez-e1588980147654.jpg'),
         )
      ),
    );
  }
}