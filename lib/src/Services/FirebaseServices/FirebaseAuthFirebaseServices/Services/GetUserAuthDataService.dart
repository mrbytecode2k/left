import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Interfaces/AuthFirebaseInterfaces.dart';


class DeafultGetUserAuthDataService extends GetUserAuthDataService {
  @override
  
  
  
  Future<Map<String, dynamic>> getUserAuthData({required Map<String, dynamic> bodyParameters}) {

       return apiService.getDataFromPostRequest(bodyParameters: bodyParameters, url: endpoint);



  
  }



}