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
          height: 5),
        const _ImageBubble(),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network('https://yesno.wtf/assets/no/6-4bf0a784c173f70a0cab96efd9ff80c9.gif'),
    );
  }
}