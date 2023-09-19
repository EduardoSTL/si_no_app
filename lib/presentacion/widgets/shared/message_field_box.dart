import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    );

    final inputDecoration = InputDecoration(
      hintText: 'End your message',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
          filled: true,
          suffixIcon: IconButton(
            icon: const Icon(Icons.send_outlined),
            onPressed: (){
              final textValue = textController.value.text;
              print('valor de la caja de texto?');
              textController.clear();
            },
        )
      );

    return TextFormField(
      controller: textController,
      decoration: inputDecoration,
      //funcion normal
      onFieldSubmitted: (value){
        print('Submit value $value');
        textController.clear();
      },
      //funcion lambda: onChanged: (value) => print('chaged: $value'),
    );
  }
}