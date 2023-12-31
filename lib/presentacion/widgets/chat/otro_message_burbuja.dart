import 'package:flutter/material.dart';
import 'package:si_no_app/domain/entities/message.dart';

class OtroMyMessageBubble extends StatelessWidget {

  final Message message;

  const OtroMyMessageBubble({
    //!colocar propiedades siempre despues del "super"
    super.key,
    required this.message
  });
    
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
              message.text, 
              style: TextStyle(color: Colors.black),
              ),
            ),
        ),
        const SizedBox(
          height: 10),
          //* asegurar que siempre exista imageUrl(imagen) 
        _ImageBubble(message.imageUrl!),
        const SizedBox(
          height: 5),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {

  final String imageUrl;

  const _ImageBubble(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(imageUrl,
      width: size.width * 0.7,
      height: 150,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress){
        if(loadingProgress == null) return child;
        return Container(
          width: size.width * 0.7,
          height: 150,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: const Text('estoy enviando una imagen'),
        );
      }),
    );
  }
}