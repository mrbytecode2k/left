import 'package:left/src/Base/AppError/AppError.dart';
import 'package:left/src/Features/Domain/Interfaces/Interfaces.dart';
import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Interfaces/AuthFirebaseInterfaces.dart';
import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Services/UpdatePasswordAuthUserService.dart';
import 'package:left/src/Utils/Helpers/ResultType/ResultType.dart';
import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Decodables/UpdatePasswordDecodable.dart';

class DefaultUpdatePasswordRepository extends UpdatePasswordRepository {
  
  // * Dependencies
  final UpdatePasswordUserService _updatePasswordUserService;

  DefaultUpdatePasswordRepository(
      {UpdatePasswordUserService? updatePasswordUserService})
      : _updatePasswordUserService =
            updatePasswordUserService ?? DefaultUpdatePasswordUserService();

  @override
  Future<Result<UpdatePasswordDecodable, Failure>> updatePassword({ required String email }) async {
    try {
      final result = await _updatePasswordUserService.updatePassword(email: email);
      UpdatePasswordDecodable decodable = UpdatePasswordDecodable.fromMap(result);
      return Result.success(decodable);

    } on Failure catch (f) {
      return Result.Failure(Failure.getFirebaseAuthErrorMessage(error: f.error));
    }
  }
}