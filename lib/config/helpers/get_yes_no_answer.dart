import 'package:dio/dio.dart';
import 'package:si_no_app/domain/entities/message.dart';

class GetYesNoAnswer{
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    //implementacion errores HTTP(400)e
    return Message(text: response.data['answer'],
    fromWho: FromWho.other,
    imageUrl: response.data['image']
    );
  }
}