import 'package:left/src/Base/AppError/AppError.dart';
import 'package:left/src/Features/Data/Repositories/Auth/UserAuthData/UserAuthDataRepository.dart';
import 'package:left/src/Features/Data/Repositories/Auth/UserAuthData/UserAuthDataRepositoryBodyParameters.dart';
import 'package:left/src/Features/Domain/Entities/Auth/UserAuthData/UserAuthDataEntity.dart';
import 'package:left/src/Utils/Helpers/ResultType/ResultType.dart';
import 'package:left/src/Features/Domain/Interfaces/Interfaces.dart';
import '../../../../../Base/Constants/ErrorMessages.dart';
import 'UserAuthDataUseCaseBodyParameters.dart';


abstract class UserAuthDataUseCase{
Future <Result<UserAuthDataEntity,Failure>>execute({ required GetUserDataUseCaseParameters parameters});
}


class DefaultUserAuthDataUseCase extends UserAuthDataUseCase{

   //Dependencia

   final UserAuthDataRepository _userAuthDataRepository;

   DefaultUserAuthDataUseCase({ UserAuthDataRepository? userAuthDataRepository})
      : _userAuthDataRepository = userAuthDataRepository ?? DefaultUserAuthDataRepository();


  @override
  Future<Result<UserAuthDataEntity, Failure>> execute({required GetUserDataUseCaseParameters parameters}) {
  
    return _userAuthDataRepository.getUserAuthData(parameters: GetUserDataRepositoryBodyParameters(idToken: parameters.idToken)).then((result) {
      switch (result.status){
        
        case ResultStatus.success:
         if (result.value == null) {
              return Result.Failure(Failure.fromMessage(message: AppFailureMessages.unExpectedErrorMessage));
         }

         return Result.success(UserAuthDataEntity.fromMap(result.value!.toMap()));
         //UserAuthDataEntity entity = UserAuthDataEntity.fromMap(result.value!.toMap());
         //return saveUserDataInDataBase(params: params, entity: entity);

        case ResultStatus.error:
        return Result.Failure(result.error);
      }
    }) ;
   }
}



