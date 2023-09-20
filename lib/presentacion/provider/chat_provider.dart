import 'package:flutter/material.dart';
import 'package:si_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:si_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  //* variable para traer protocolo http:
  final getYesNoAnswer = GetYesNoAnswer();

  //* instanciacion de clase directamente usando el constrct. de la clase:
  final ScrollController chatScrollController = ScrollController();

  //* Lista de mensajes predefinidos
  List<Message> messageList = [
    Message(text: 'Que ondas', fromWho: FromWho.mine),
    Message(text: 'ensalada', fromWho: FromWho.mine),

  ];

  //* Mensajes generados desde el chat
  Future<void> sendMessage(String text) async{
    if(text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.mine);
    messageList.add(newMessage);
    if(text.endsWith('?')){
      await otherReply();
    }
    notifyListeners();
    moveScrollToBottom();
  }

  //funcion que retrasa la milisemias de s de la carga de las burbujas 
  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(microseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut);
  }

  Future<void> otherReply() async{
    final otherMessage = await getYesNoAnswer.getAnswer(); 
    messageList.add(otherMessage);
    notifyListeners();
    moveScrollToBottom();
  }
}