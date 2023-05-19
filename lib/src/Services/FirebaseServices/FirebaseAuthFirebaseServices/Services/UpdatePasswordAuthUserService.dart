import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/BodyParameters/UpdatePasswordBodyParameters.dart';
import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Interfaces/AuthFirebaseInterfaces.dart';

class DefaultUpdatePasswordUserService extends UpdatePasswordUserService {

  final String _requestType = "PASSWORD_RESET";

  @override
  Future<Map<String,dynamic>> updatePassword({ required String email }) async {
    final params = UpdatePasswordBodyParameters(requestType: _requestType, email: email);
    return apiService.getDataFromPostRequest(bodyParameters: params.toMap(), url: endpoint);
  }
}