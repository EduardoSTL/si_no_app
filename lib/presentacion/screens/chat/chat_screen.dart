import 'package:flutter/material.dart'; //herramientas para crear interfaz de usuario
import 'package:provider/provider.dart';
import 'package:si_no_app/domain/entities/message.dart';
import 'package:si_no_app/presentacion/provider/chat_provider.dart';
import 'package:si_no_app/presentacion/widgets/chat/message_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/chat/otro_message_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/shared/message_field_box.dart';

//interfaz de usuario del chat que es inmutable:
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //* Scaffold > Pantalla > AppBar > hijos, etc
    return Scaffold(
      //* AppBar que contiene la ProfilePic del chat
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3.0), 
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png'
            ),
          ),
          ),
          title: const Text('Juan Perez'),
          centerTitle: false,
      ),
      body: _Chatview(),
      //* Vista principal de chat (nuevo widget):
      //! buttomNav Bar comment:
      /* bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Escribe un mensaje',
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send),
            ),
          ],),
      ), */
    );
  }
}

class _Chatview extends StatelessWidget{  
  //construccion de la vista del chat
  @override
  Widget build(BuildContext context) {

    final chatProvider = context.watch<ChatProvider>();
    
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
            //Expanded se utiliza para ocupar todo el espacio vertical disponible
              Expanded(
                //* ListView crea una lista con un total(100 elements)
                child: ListView.builder(
                controller: chatProvider.chatScrollController,
                //instanciamos la class ChatProvider para involucrar todos sus widget
                itemCount: chatProvider.messageList.length,
                //constructor de elementos que se llama para cada elemento en la lista. 
                //Toma dos argumentos: context e index. context es el contexto de la aplicación e index es el índice del elemento actual que se está construyendo en la lista.                
                itemBuilder: (context, index){
                  final message = chatProvider.messageList[index];
                  return(message.fromWho == FromWho.other)
                  ? OtroMyMessageBubble()
                                 //!(property : value)                         
                  : MyMessageBubble(message:message);
                },)
                ),
          //* caja de texto de mensajes
          MessageFieldBox(
            //onValue: (value) => chatProvider.sendMessage(value),
            onValue: chatProvider.sendMessage,
          )
        ],)
      )
    );
  }
}