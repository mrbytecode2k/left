
import 'dart:convert';
import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Decodables/AuthErrorDecodable.dart';
import 'package:left/src/Base/Constants/ErrorMessages.dart';

class Failure {
   String? message;
   Map<String,dynamic> error = {};

   Failure.fromMessage({ this.message });

   Failure.fromBody({ required String body }) {
      var jsonData = jsonDecode(body);
      error = jsonData;
    }

   @override
   String toString() => message ?? "";

  // TODO: Use this method in auth errors with Firebase
  static Failure getFirebaseAuthErrorMessage({ required Map<String,dynamic> error }) {
    AuthErrorDecodable _errorDecodable = AuthErrorDecodable.fromMap(error);

    var message = "";
    _errorDecodable.error?.errors?.forEach( (error) {
      message = error.message!;
    });

    if(message == "EMAIL_NOT_FOUND") {
      return Failure.fromMessage(message: FBFailureMessages.emailNotFoundMessage);
    } else if(message == "INVALID_PASSWORD") {
      return Failure.fromMessage(message: FBFailureMessages.invalidPasswordMessage);
    } else if(message == "EMAIL_EXISTS") {
      return Failure.fromMessage(message: FBFailureMessages.emailExistMessage);
    } else if(message == "TOO_MANY_ATTEMPTS_TRY_LATER") {
      return Failure.fromMessage(message: FBFailureMessages.tooManyAttempsMessage);
    } else if(message == "INVALID_ID_TOKEN") {
      return Failure.fromMessage(message: FBFailureMessages.invalidTokenMessage);
    } else if(message == "USER_NOT_FOUND") {
      return Failure.fromMessage(message: FBFailureMessages.userNotFoundMessage);
    } else {
      return Failure.fromMessage(message: message);
    }
  }
}



