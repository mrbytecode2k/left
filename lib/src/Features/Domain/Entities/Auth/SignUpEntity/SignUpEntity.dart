import 'dart:convert';

class SignUpEntity {
  SignUpEntity({
    this.idToken,
    this.email,
    this.refreshToken,
    this.expiresIn,
    this.localId,
  });

  String? idToken;
  String? email;
  String? refreshToken;
  String? expiresIn;
  String? localId;

  factory SignUpEntity.fromJson(String str) => SignUpEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SignUpEntity.fromMap(Map<String, dynamic> json) => SignUpEntity(
    idToken: json["idToken"],
    email: json["email"],
    refreshToken: json["refreshToken"],
    expiresIn: json["expiresIn"],
    localId: json["localId"],
  );

  Map<String, dynamic> toMap() => {
    "idToken": idToken,
    "email": email,
    "refreshToken": refreshToken,
    "expiresIn": expiresIn,
    "localId": localId,
  };
}