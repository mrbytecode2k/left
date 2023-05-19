

import 'package:left/src/Features/Data/Repositories/Auth/UpdatePasswordRepository/UpdatePasswordRepository.dart';
import 'package:left/src/Features/Domain/Interfaces/Interfaces.dart';

abstract class UpdatePasswordUseCase {
  Future<void> execute({required String email});
}

class DefaultUpdatePasswordUseCase extends UpdatePasswordUseCase {

//Dependencias
UpdatePasswordRepository  _updatePasswordRepository;

DefaultUpdatePasswordUseCase(UpdatePasswordRepository? updatePasswordRepository)
    : _updatePasswordRepository = updatePasswordRepository ??  DefaultUpdatePasswordRepository();

  @override
  Future<void> execute({required String email}) {
 
    return _updatePasswordRepository.updatePassword(email: email);

  }


}