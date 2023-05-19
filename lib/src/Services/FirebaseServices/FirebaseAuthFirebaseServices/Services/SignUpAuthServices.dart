import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Interfaces/AuthFirebaseInterfaces.dart';


class DefaultSignUpService extends SignUpService {
  @override
  Future<Map<String,dynamic>> signUp({required Map<String,dynamic> bodyParameters}) async {
    return apiService.getDataFromPostRequest(bodyParameters: bodyParameters, url: endpoint);
  }
}