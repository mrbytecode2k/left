// To parse this JSON data, do
//
//     final correctPostBodyParams = correctPostBodyParamsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class CorrectPostBodyParams {
    CorrectPostBodyParams({
        required this.title,
        required this.body,
        required this.userId,
    });

    String title;
    String body;
    int userId;

    factory CorrectPostBodyParams.fromRawJson(String str) => CorrectPostBodyParams.fromJson(json.decode(str));

    String toRawJson() => json.encode(toMap());

    factory CorrectPostBodyParams.fromJson(Map<String, dynamic> json) => CorrectPostBodyParams(
        title: json["title"],
        body: json["body"],
        userId: json["userId"],
    );

    Map<String, dynamic> toMap() => {
        "title": title,
        "body": body,
        "userId": userId,
    };
}
