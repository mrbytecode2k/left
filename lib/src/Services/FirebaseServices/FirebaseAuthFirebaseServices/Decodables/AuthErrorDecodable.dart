
import 'dart:convert';

class AuthErrorDecodable {
  AuthErrorDecodable({
    this.error,
  });

  AuthErrorDecodableError? error;

  factory AuthErrorDecodable.fromJson(String str) => AuthErrorDecodable.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AuthErrorDecodable.fromMap(Map<String, dynamic> json) => AuthErrorDecodable(
    error: json["error"] == null ? null : AuthErrorDecodableError.fromMap(json["error"]),
  );

  Map<String, dynamic> toMap() => {
    "error": error == null ? null : error!.toMap(),
  };
}

class AuthErrorDecodableError {
  AuthErrorDecodableError({
    this.code,
    this.message,
    this.errors,
  });

  int? code;
  String? message;
  List<ErrorElement>? errors;

  factory AuthErrorDecodableError.fromJson(String str) => AuthErrorDecodableError.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AuthErrorDecodableError.fromMap(Map<String, dynamic> json) => AuthErrorDecodableError(
    code: json["code"],
    message: json["message"],
    errors: json["errors"] == null ? null : List<ErrorElement>.from(json["errors"].map((x) => ErrorElement.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "code": code,
    "message": message,
    "errors": errors == null ? null : List<dynamic>.from(errors!.map((x) => x.toMap())),
  };
}

class ErrorElement {
  ErrorElement({
    this.message,
    this.domain,
    this.reason,
  });

  String? message;
  String? domain;
  String? reason;

  factory ErrorElement.fromJson(String str) => ErrorElement.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ErrorElement.fromMap(Map<String, dynamic> json) => ErrorElement(
    message: json["message"],
    domain: json["domain"],
    reason: json["reason"],
  );

  Map<String, dynamic> toMap() => {
    "message": message,
    "domain": domain,
    "reason": reason,
  };
}