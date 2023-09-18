import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          title: const Text('Eduardo'),
          centerTitle: false,
      ),
    );
  }
}