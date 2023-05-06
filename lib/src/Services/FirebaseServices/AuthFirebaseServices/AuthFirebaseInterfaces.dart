import 'package:left/src/base/ApiService/ApiService.dart';
import 'package:left/src/test/Base/ApiService/TestApiService.dart';


abstract class BaseFirebaseService{

ApiService apiService= DefaultApiService();

static String baseUrl="https://identitytoolkit.googleapis.com/v1/";
static String AdminToken="AIzaSyAXFMnfF15YqWPklpjRtYy7bSGIc7tNeEk";
static String singleUpEndpoint="account:signUp?key=";
static String singleInEndpoint="account:signIN?key=";
}

abstract class SignUpService extends BaseFirebaseService{
  String endpoint =  BaseFirebaseService.baseUrl + BaseFirebaseService.singleUpEndpoint + BaseFirebaseService.AdminToken;
  Future <Map <String,dynamic>> signUp({required Map<String,dynamic> bodyParameters});
}

abstract class SignInService extends BaseFirebaseService{
  String endpoint =  BaseFirebaseService.baseUrl + BaseFirebaseService.singleUpEndpoint + BaseFirebaseService.AdminToken;
  Future <Map <String,dynamic>> signIn({required Map<String,dynamic> bodyParameters});

}