import 'package:dio/dio.dart';
import 'package:si_no_app/domain/entities/message.dart';
import 'package:si_no_app/infraestructure/models/yes_no_model.dart';

class GetYesNoAnswer{
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    final yesNoModel = YesNoModel.fromJson(response.data);
    //implementacion errores HTTP(400)e
    return yesNoModel.toMessageEntity();
  }
}