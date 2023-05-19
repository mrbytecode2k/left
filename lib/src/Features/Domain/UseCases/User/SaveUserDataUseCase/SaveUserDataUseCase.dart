import 'package:left/src/Features/Data/Repositories/User/SaveUserDataRepository.dart';
import 'package:left/src/Features/Data/Repositories/User/UserBodyParameters.dart';
import 'package:left/src/Features/Domain/Entities/User/UserEntity.dart';
import 'package:left/src/Features/Domain/Interfaces/Interfaces.dart';
import 'package:left/src/Features/Domain/UseCases/User/SaveUserDataUseCase/SaveUserDataUseCaseParameters.dart';
import 'package:left/src/Utils/Helpers/ResultType/ResultType.dart';
import 'package:left/src/Base/AppError/AppError.dart';
import 'package:left/src/Base/AppError/AppError.dart';
import 'package:left/src/Base/Constants/ErrorMessages.dart';


abstract class SaveUserDataUseCase {
  Future<Result<UserEntity, Failure>> execute(
      {required SaveUserDataUseCaseParameters params});
}

class DefaultSaveUserDataUseCase extends SaveUserDataUseCase {
  //dependencias
   SaveUserDataRepository _saveUserDataRepository;

  DefaultSaveUserDataUseCase({SaveUserDataRepository? saveUserDataRepository})
      : _saveUserDataRepository =
            saveUserDataRepository ?? DefaultSaveUserDataRepository();

  @override
  Future<Result<UserEntity, Failure>> execute(
      {required SaveUserDataUseCaseParameters params}) {
      UserBodyParameters _parameters = UserBodyParameters(
      localId: params.localId,
      role: params.role?.toShortString(),
      username: params.username,
      email: params.email,
      phone: params.phone,
      dateOfBirth: params.dateOfBirth,
      startDate: params.startDate,
      photo: params.photo,
      shippingAddress: params.shippingAddress,
      billingAddress: params.billingAddress,
      idToken: params.idToken,
    );

    return _saveUserDataRepository.saveUserData(params: _parameters).then((result) {

          switch(result.status){
            case ResultStatus.success:
              if (result.value==null){
                return Result.Failure(Failure.fromMessage(message: AppFailureMessages.unExpectedErrorMessage));
              }
              var _entity =UserEntity.fromMap(result.value!.toMap());
              return Result.success(_entity);
            case ResultStatus.error:
            return Result.Failure(result.error);

          }
        });
  }
}
