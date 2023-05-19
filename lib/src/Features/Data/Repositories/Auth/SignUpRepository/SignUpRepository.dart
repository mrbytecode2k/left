import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Interfaces/AuthFirebaseInterfaces.dart';
import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Services/SignUpAuthServices.dart';
import 'package:left/src/Features/Data/Repositories/Auth/SignUpRepository/SignUpRepositoryParameters.dart';
import 'package:left/src/Base/AppError/AppError.dart';
import 'package:left/src/Utils/Helpers/ResultType/ResultType.dart';
import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Decodables/SignUpDecodable.dart';
import 'package:left/src/Features/Domain/Interfaces/Interfaces.dart';

class DefaultSignUpRepository extends SignUpRepository{
  SignUpService _signUpService;

  DefaultSignUpRepository({SignUpService? signUpService })
      : _signUpService =  signUpService ?? DefaultSignUpService();
  
  @override
  Future<Result<SignUpDecodable, Failure>> signUp({required SignUpRepositoryParameters params}) async {

   try{
    final result = await _signUpService.signUp(bodyParameters: params.toMap());
    SignUpDecodable decodable = SignUpDecodable.fromMap(result);
    return Result.success(decodable);

   } on Failure catch(f)   {
    return Result.Failure(Failure.getFirebaseAuthErrorMessage(error: f.error));
    
   }


  }
 


}