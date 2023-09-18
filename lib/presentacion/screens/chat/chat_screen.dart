import 'package:flutter/material.dart';
import 'package:si_no_app/presentacion/widgets/chat/message_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/chat/otro_message_burbuja.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //* Scaffold > Pantalla > AppBar
    return Scaffold(
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
      //* Barra de chat (nuevo widget):
      bottomNavigationBar: BottomAppBar(
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
      ),
    );
  }
}

class _Chatview extends StatelessWidget{  
  @override
  Widget build(BuildContext context) {
      return SafeArea(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
              Expanded(child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){
                  return(index % 2 == 0)
                  ? const OtroMyMessageBubble() 
                  : MyMessageBubble();
                },
          )),
          Text("ensalada")
        ],)
      )
    );
  }
}