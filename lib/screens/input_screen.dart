import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y entradas de texto'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          children: [
            InputCustom(
                label: 'Nombre',
                hintText: 'Ingresa ntu nombre',
                helperText: 'Solo letras',
                suffixIcon: Icons.keyboard_arrow_right_outlined,
                icon: Icons.person,
                keyboardType: TextInputType.text)
          ],
        ),
      ),
    );
  }
}

class InputCustom extends StatelessWidget {
  final String label, hintText, helperText;
  final IconData suffixIcon;
  final IconData? icon;
  final TextInputType? keyboardType;
  const InputCustom({
    super.key,
    required this.label,
    required this.hintText,
    required this.helperText,
    required this.suffixIcon,
    this.icon,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      // autofocus: true,
      keyboardType: keyboardType,
      onChanged: (value) => print(value),
      textCapitalization: TextCapitalization.words,
      validator: (value) {
        if (value == null) return 'Este campo es necesario';
        return value.length > 3 ? null : 'Debe tener mas de 3 caracteres';
      },
      decoration: InputDecoration(
        label: Text(label),
        hintText: hintText,
        helperText: helperText,
        suffixIcon: Icon(suffixIcon),
        icon: (icon == null) ? null : Icon(icon),

        
       
      ),
    );
  }
}
