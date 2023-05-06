import 'package:left/src/Services/FirebaseServices/AuthFirebaseServices/AuthFirebaseInterfaces.dart';


class DefaultSignUpService extends SignUpService {
  @override
  Future<Map<String,dynamic>> signUp({required Map<String,dynamic> bodyParameters}) async {
    return apiService.getDataFromPostRequest(bodyParameters: bodyParameters, uri: endpoint);
  }
}