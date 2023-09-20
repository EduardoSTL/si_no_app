import 'package:flutter/material.dart';
import 'package:si_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  //instanciacion de clase directamente usando el constrct. de la clase
  final ScrollController chatScrollController = ScrollController();

  //* Lista de mensajes predefinidos
  List<Message> messageList = [
    Message(text: 'Que ondas', fromWho: FromWho.mine),
    Message(text: 'Ya regresaste?', fromWho: FromWho.other),

  ];

  //* Mensajes generados desde el chat
  Future<void> sendMessage(String text) async{
    final newMessage = Message(text: text, fromWho: FromWho.mine);
    messageList.add(newMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  void moveScrollToBottom (){
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut);
  }
}