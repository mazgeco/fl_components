import 'package:flutter/material.dart';
import 'package:fl_components/widgets/custom_input_field.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CustomInputField(labelText: 'Nombre', hindText: 'Nombre del usuario'),
              SizedBox(height: 8),

              CustomInputField(labelText: 'Apellido', hindText: 'Apellido del usuario'),
              SizedBox(height: 8),

              CustomInputField(labelText: 'Correo', hindText: 'Correo del usuario', textInputType: TextInputType.emailAddress),
              SizedBox(height: 8),
              
              CustomInputField(labelText: 'Contraseña', hindText: 'Contraseña del usuario', isPassword: true,),
              SizedBox(height: 8),
            ],
          ),
        ),
      )
    );
  }
}