import 'package:left/src/Features/Data/Decodables/Auth/UserAuthData/UserAuthDataDecodable.dart';
import 'package:left/src/Features/Data/Repositories/Auth/SignInRepository/SignInBodyParameters.dart';
import 'package:left/src/Features/Data/Repositories/Auth/UserAuthData/UserAuthDataRepositoryBodyParameters.dart';
import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Decodables/SignInDecodable.dart';
import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Decodables/SignUpDecodable.dart';
import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Decodables/UpdatePasswordDecodable.dart';
import 'package:left/src/Utils/Helpers/ResultType/ResultType.dart';
import 'package:left/src/Features/Data/Decodables/User/UserDecodable.dart';
import 'package:left/src/Features/Data/Repositories/Auth/SignUpRepository/SignUpRepositoryParameters.dart';
import 'package:left/src/Features/Data/Repositories/User/UserBodyParameters.dart';
import 'package:left/src/Base/AppError/AppError.dart';

abstract class SignInRepository {
  Future<Result<SignInDecodable, Failure>> signIn( {required SignInBodyParameters params});
}


abstract class SignUpRepository
{
   Future<Result<SignUpDecodable, Failure>> signUp({ required SignUpRepositoryParameters params });

}

abstract class UpdatePasswordRepository{

  Future<Result<UpdatePasswordDecodable,Failure>>updatePassword({required String email});
}


abstract class SaveUserDataRepository{
 Future<Result<UserDecodable, Failure>>  saveUserData({required UserBodyParameters params});

}

abstract class UserAuthDataRepository{
 Future<Result<UserAuthDataDecodable, Failure>>  getUserAuthData({required GetUserDataRepositoryBodyParameters parameters});
}

abstract class FetchUserDataRepository{
 Future<Result<UserDecodable, Failure>>  fetchUserData({required String localId});
}

//Local Storage
abstract class SaveLocalStorageRepository{
  Future<void> saveInLocalStorage({ required String key, required String value });
  Future<void> saveRecentSearchInLocalStorage({ required String key, required List<String> value });
}

abstract class FetchLocalStorageRepository {
  Future<String?> fetchInLocalStorage({ required String key });
  Future<List<String>?> fetchRecentSearches();
}

abstract class RemoveLocalStorageRepository {
  Future<void> removeInLocalStorage({required String key});
}

