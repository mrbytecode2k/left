

import 'package:left/src/Features/Data/Repositories/User/UserBodyParameters.dart';
import 'package:left/src/Features/Data/Decodables/User/UserDecodable.dart';
import 'package:left/src/Features/Domain/Interfaces/Interfaces.dart';
import 'package:left/src/Services/FirebaseServices/RealTimeDatabaseService/Interfaces/Interfaces.dart';
import 'package:left/src/Services/FirebaseServices/RealTimeDatabaseService/Services/RealtimeDatabaseServices.dart';
import 'package:left/src/Base/AppError/AppError.dart';
import 'package:left/src/Utils/Helpers/ResultType/ResultType.dart';
import 'package:left/src/Base/Constants/ErrorMessages.dart';

abstract class _Paths{
  static String userCollection="users/";
}

class DefaultSaveUserDataRepository extends SaveUserDataRepository{

//Dependencias
RealtimeDatabaseService _realtimeDatabaseService;

  DefaultSaveUserDataRepository({RealtimeDatabaseService? realtimeDatabaseService})
      :_realtimeDatabaseService = realtimeDatabaseService ?? DefaultRealtimeDatabaseService();


  @override
  Future<Result<UserDecodable, Failure>> saveUserData({required UserBodyParameters params}) async {
   if(params.localId==null){
        return Result.Failure(Failure.fromMessage(message: AppFailureMessages.unExpectedErrorMessage));
   }
//Creacion de paths
  var path=_Paths.userCollection + params.localId!;

  try{
    final result = await _realtimeDatabaseService.putData(bodyParameters: params.toMap(), path: path);
    UserDecodable decodable = UserDecodable.fromMap(result);

    return Result.success(decodable);

  } on Failure catch(f){
    return Result.Failure(f);
  }

  }

}


