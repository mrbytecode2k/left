import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Interfaces/AuthFirebaseInterfaces.dart';
import '../../../../Base/AppError/AppError.dart';



class DeafultSignInService extends SignInService {
  @override
 
  Future<Map<String, dynamic>> signIn({required Map<String, dynamic> bodyParameters}) {
    // TODO: implement signIn
    return apiService.getDataFromPostRequest(bodyParameters: bodyParameters, url: endpoint);
  }

 Future<String> getIdToken({required Map<String, dynamic> bodyParameters }) async {
    try {
      final userData = await signIn(bodyParameters: bodyParameters);
      return userData['idToken'] as String;
    } on Failure catch (f) {
      return Future.error(Failure.getFirebaseAuthErrorMessage(error: f.error));
    }

  
 }
}