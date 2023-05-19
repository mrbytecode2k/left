import 'package:left/src/Base/AppError/AppError.dart';
import 'package:left/src/Features/Data/Repositories/User/FetchUserDataRepository.dart';
import 'package:left/src/Features/Domain/Entities/User/UserEntity.dart';
import 'package:left/src/Features/Domain/Interfaces/Interfaces.dart';
import 'package:left/src/Utils/Helpers/ResultType/ResultType.dart';

import '../../../../../Base/Constants/ErrorMessages.dart';

abstract class FetchUserDataUseCase {
Future<Result<UserEntity,Failure>>execute({required String localId});

}


class DefaultFetchUserDataUseCase extends FetchUserDataUseCase{

  final FetchUserDataRepository  _fetchUserDataRepository;

  DefaultFetchUserDataUseCase(FetchUserDataRepository? fetchUserDataRepository)
     : _fetchUserDataRepository = fetchUserDataRepository ?? DefaultFetchUserDataRepository();

  @override
  Future<Result<UserEntity, Failure>> execute({required String localId}) {
    
     return _fetchUserDataRepository.fetchUserData(localId: localId).then((result) {

 switch (result.status){
        
        case ResultStatus.success:
         if (result.value == null) {
              return Result.Failure(Failure.fromMessage(message: AppFailureMessages.unExpectedErrorMessage));
         }

         return Result.success(UserEntity.fromMap(result.value!.toMap()));
         //UserAuthDataEntity entity = UserAuthDataEntity.fromMap(result.value!.toMap());
         //return saveUserDataInDataBase(params: params, entity: entity);

        case ResultStatus.error:
        return Result.Failure(result.error);
      }

     });



  }



}