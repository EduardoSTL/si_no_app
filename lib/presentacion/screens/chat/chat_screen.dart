import 'package:flutter/material.dart';

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
              Expanded(child: Container(
            color: const Color.fromARGB(255, 61, 175, 86),
          )),
          Text("ensalada")
        ],)
      )
    );
  }
}