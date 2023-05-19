import 'package:left/src/Base/ApiService/ApiService.dart';
import 'package:left/src/test/Base/ApiService/TestApiService.dart';


abstract class BaseAuthFirebaseService{

ApiService apiService= DefaultApiService();
    static String baseUrl="https://identitytoolkit.googleapis.com/v1/";
    static String adminToken="AIzaSyAXFMnfF15YqWPklpjRtYy7bSGIc7tNeEk";
    static String signUpEndpoint="accounts:signUp?key=";
    static String signInEndpoint="accounts:signInWithPassword?key=";
    static String updatePasswordEndpoint = "accounts:sendOobCode?key=";
    static String getUserDataEndpoint = "accounts:lookup?key=";
    static String updateEmailEndpoint = "accounts:update?key=";
}

abstract class SignUpService extends BaseAuthFirebaseService {
  String endpoint = BaseAuthFirebaseService.baseUrl + BaseAuthFirebaseService.signUpEndpoint + BaseAuthFirebaseService.adminToken;
  Future<Map<String, dynamic>> signUp({ required Map<String, dynamic> bodyParameters });
}

abstract class SignInService extends BaseAuthFirebaseService {
  String endpoint = BaseAuthFirebaseService.baseUrl + BaseAuthFirebaseService.signInEndpoint + BaseAuthFirebaseService.adminToken;
  Future<Map<String, dynamic>> signIn({ required Map<String, dynamic> bodyParameters });
  Future<String> getIdToken({ required Map<String, dynamic> bodyParameters });
}

abstract class GetUserAuthDataService extends BaseAuthFirebaseService {
  String endpoint = BaseAuthFirebaseService.baseUrl + BaseAuthFirebaseService.getUserDataEndpoint + BaseAuthFirebaseService.adminToken;
  Future<Map<String, dynamic>> getUserAuthData({ required Map<String, dynamic> bodyParameters });
}

abstract class UpdatePasswordUserService extends BaseAuthFirebaseService {
  String endpoint = BaseAuthFirebaseService.baseUrl + BaseAuthFirebaseService.updatePasswordEndpoint + BaseAuthFirebaseService.adminToken;
  Future<Map<String, dynamic>> updatePassword({ required String email });
}

abstract class UpdateEmailUserService extends BaseAuthFirebaseService {
  String endpoint = BaseAuthFirebaseService.baseUrl + BaseAuthFirebaseService.updateEmailEndpoint + BaseAuthFirebaseService.adminToken;
  Future<Map<String, dynamic>> updateEmail({ required String oldEmail, required String newEmail, required String password });
}