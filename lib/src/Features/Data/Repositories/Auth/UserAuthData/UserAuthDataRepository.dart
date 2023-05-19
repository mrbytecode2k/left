import 'package:left/src/Features/Data/Repositories/Auth/UserAuthData/UserAuthDataRepositoryBodyParameters.dart';
import 'package:left/src/Features/Data/Decodables/Auth/UserAuthData/UserAuthDataDecodable.dart';
import 'package:left/src/Base/AppError/AppError.dart';
import 'package:left/src/Features/Domain/Interfaces/Interfaces.dart';
import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Interfaces/AuthFirebaseInterfaces.dart';
import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Services/GetUserAuthDataService.dart';
import 'package:left/src/Utils/Helpers/ResultType/ResultType.dart';

class DefaultUserAuthDataRepository extends UserAuthDataRepository{

  final GetUserAuthDataService _getUserAuthDataService;

    DefaultUserAuthDataRepository({ GetUserAuthDataService? getUserAuthDataService})
      :_getUserAuthDataService = getUserAuthDataService ?? DeafultGetUserAuthDataService();


  @override
  Future<Result<UserAuthDataDecodable, Failure>> getUserAuthData({required GetUserDataRepositoryBodyParameters parameters}) async{


   try{
    final result = await _getUserAuthDataService.getUserAuthData(bodyParameters: parameters.toMap());
    UserAuthDataDecodable _decodable = UserAuthDataDecodable.fromMap(result);
    return Result.success(_decodable);

   } on Failure catch(f)   {
    return Result.Failure(Failure.getFirebaseAuthErrorMessage(error: f.error));
    
   }

  
  }


  

}