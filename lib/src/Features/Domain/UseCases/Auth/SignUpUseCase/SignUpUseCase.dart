import 'package:left/src/Features/Domain/UseCases/User/SaveUserDataUseCase/SaveUserDataUseCase.dart';
import 'package:left/src/Features/Domain/UseCases/User/SaveUserDataUseCase/SaveUserDataUseCaseParameters.dart';
import 'package:left/src/Utils/DefaultImages/DefaultUserPhotoHelper.dart';
import 'package:left/src/Utils/Helpers/Dates/DateHelpers.dart';
import 'package:left/src/Utils/Helpers/ResultType/ResultType.dart';
import 'package:left/src/Base/AppError/AppError.dart';
import 'package:left/src/Base/Constants/ErrorMessages.dart';
import 'package:left/src/Features/Data/Repositories/Auth/SignUpRepository/SignUpRepository.dart';
import 'package:left/src/Features/Data/Repositories/Auth/SignUpRepository/SignUpRepositoryParameters.dart';
import 'package:left/src/Features/Domain/Entities/Auth/SignUpEntity/SignUpEntity.dart';
import 'package:left/src/Features/Domain/Interfaces/Interfaces.dart';
import '../../../Entities/User/UserEntity.dart';
import 'SignUpUseCaseParameters.dart';

abstract class SignUpUseCase{
  Future <Result<SignUpEntity,Failure >>execute({required SignUpUseCaseParameters params});
}

class DefaultSignUpUseCase extends SignUpUseCase {

   SignUpRepository _signUpRepository;
   SaveUserDataUseCase  _saveUserDataUseCase;


   DefaultSignUpUseCase({SignUpRepository? signUpRepository , SaveUserDataUseCase? saveUserDataUseCase})
        : _signUpRepository = signUpRepository ?? DefaultSignUpRepository(),
        _saveUserDataUseCase = saveUserDataUseCase ?? DefaultSaveUserDataUseCase();

  @override
  Future<Result<SignUpEntity, Failure>> execute({required SignUpUseCaseParameters params}) {
    return  _signUpRepository
      .signUp(params: SignUpRepositoryParameters(email: params.email , 
                                                        password: params.password))
      .then( (result)
    {
        switch (result.status){
        
        case ResultStatus.success:
         if (result.value == null) {
              return Result.Failure(Failure.fromMessage(message: AppFailureMessages.unExpectedErrorMessage));
         }
         SignUpEntity entity = SignUpEntity.fromMap(result.value!.toMap());
         return saveUserDataInDataBase(params: params, entity: entity);

        case ResultStatus.error:
        return Result.Failure(result.error);

      }
    });
  }
}

extension on DefaultSignUpUseCase {
  Future<Result<SignUpEntity, Failure>> saveUserDataInDataBase({required SignUpUseCaseParameters params,
                                                                required SignUpEntity entity }) {

                                                                  
    SaveUserDataUseCaseParameters _params = SaveUserDataUseCaseParameters(
        localId: entity.localId,
        role: UserRole.user,
        username: params.username,
        email: entity.email,
        phone: params.phone,
        dateOfBirth: params.date,
        startDate: DateHelpers.getStartDate(),
        photo: DefaultUserPhotoHelper.defaultUserPhoto,
        shippingAddress: '',
        billingAddress: '',
        idToken: entity.idToken,
        );

    return _saveUserDataUseCase.execute(params: _params).then((result) {
      switch (result.status) {
        case ResultStatus.success:
          return Result.success(entity);
        case ResultStatus.error:
          return Result.Failure(result.error);
      }
    });
  }
}