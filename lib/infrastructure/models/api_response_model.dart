import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:yesnoapp/domain/entities/message.dart';

class ApiResponseModel {
  String answer;
  bool forced;
  String image;

  ApiResponseModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory ApiResponseModel.fromJsonMap(Map<String, dynamic> json) =>
      ApiResponseModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  

  Message toMessageEntity() => Message(
      text: answer,
      fromWho: FromWho.she,
      url: image);
}
