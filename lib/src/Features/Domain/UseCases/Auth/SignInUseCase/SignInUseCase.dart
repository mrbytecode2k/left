import 'package:left/src/Base/AppError/AppError.dart';
import 'package:left/src/Base/Constants/ErrorMessages.dart';
import 'package:left/src/Features/Data/Repositories/Auth/SignInRepository/SignInBodyParameters.dart';
import 'package:left/src/Features/Data/Repositories/Auth/SignInRepository/SignInRepository.dart';
import 'package:left/src/Features/Domain/Entities/Auth/SingInEntity/SingInEntity.dart';
import 'package:left/src/Features/Domain/Interfaces/Interfaces.dart';
import 'package:left/src/Features/Domain/UseCases/Auth/SignInUseCase/SignInUseCaseParameters.dart';
import 'package:left/src/Utils/Helpers/ResultType/ResultType.dart';

abstract class SignInUseCase {

  Future<Result<SignInEntity,Failure>> execute ({required SignInUseCaseParameters params});

}

class DefaultSignInUseCase extends SignInUseCase {
  // * Dependencies
  final SignInRepository _signInRepository;

  DefaultSignInUseCase({ SignInRepository? signInRepository }) 
  : _signInRepository = signInRepository ?? DefaultSigInRepository();

  @override
  Future<Result<SignInEntity, Failure>> execute ({ required SignInUseCaseParameters params }) {
    return _signInRepository
        .signIn(params: SignInBodyParameters(email: params.email, password: params.password))
        .then((result) {
      switch (result.status) {
        case ResultStatus.success:
          // Null Check
          if (result.value == null) {
            return Result.Failure(
                Failure.fromMessage(message: AppFailureMessages.unExpectedErrorMessage));
          }
          return Result.success(SignInEntity.fromMap(result.value!.toMap()));
        case ResultStatus.error:
          return Result.Failure(result.error);
      }
    });
  }
}