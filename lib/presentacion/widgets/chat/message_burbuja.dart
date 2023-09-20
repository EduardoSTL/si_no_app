import 'package:flutter/material.dart';
import 'package:si_no_app/domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {

  final Message message;

  const MyMessageBubble({
    super.key,
    required this.message
    });

  @override
  Widget build(BuildContext context) {
    //* llamar paleta de colores de la clase theme;
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
              message.text, 
              style: TextStyle(color: Colors.black),),
            ),
        ),
        const SizedBox(
          height: 10)
      ],
    );
  }
}