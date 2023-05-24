import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:yesnoapp/domain/entities/message.dart';
import 'package:yesnoapp/infrastructure/models/api_response_model.dart';

class GetApiAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final apiResponseModel = ApiResponseModel.fromJsonMap(response.data);

    return apiResponseModel.toMessageEntity();
  }
}
