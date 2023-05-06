import 'package:left/src/Services/FirebaseServices/AuthFirebaseServices/AuthFirebaseInterfaces.dart';


class DeafultSignInService extends SignInService {
  @override
 
  Future<Map<String, dynamic>> signIn({required Map<String, dynamic> bodyParameters}) {
    // TODO: implement signIn
    return apiService.getDataFromPostRequest(bodyParameters: bodyParameters, uri: endpoint);
  }


  
}