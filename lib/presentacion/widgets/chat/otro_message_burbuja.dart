import 'package:flutter/material.dart';

class OtroMyMessageBubble extends StatelessWidget {
  const OtroMyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    //* llamar paleta de colores de la clase theme;
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20)
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text('Laboris deserunt voluptate cillum eiusmod.', 
              style: TextStyle(color: Colors.black),),
            ),
        ),
        const SizedBox(
          height: 10)
      ],
    );
  }
}