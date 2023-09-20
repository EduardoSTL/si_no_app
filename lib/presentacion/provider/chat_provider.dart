import 'package:flutter/material.dart';
import 'package:si_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  List<Message> messageList = [
    Message(text: 'Que ondas', fromWho: FromWho.mine),
    Message(text: 'Ya regresaste?', fromWho: FromWho.other),

  ];

  Future<void> sendMessage(String text) async{
    final newMessage = Message(text: text, fromWho: FromWho.mine);
    messageList.add(newMessage);

    notifyListeners();
  }
}