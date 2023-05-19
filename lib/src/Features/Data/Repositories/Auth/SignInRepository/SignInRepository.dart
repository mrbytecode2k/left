

import 'package:left/src/Base/AppError/AppError.dart';
import 'package:left/src/Features/Data/Repositories/Auth/SignInRepository/SignInBodyParameters.dart';
import 'package:left/src/Features/Domain/Interfaces/Interfaces.dart';
import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Decodables/SignInDecodable.dart';
import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Interfaces/AuthFirebaseInterfaces.dart';
import 'package:left/src/Services/FirebaseServices/FirebaseAuthFirebaseServices/Services/SignInAuthServices.dart';

import 'package:left/src/Utils/Helpers/ResultType/ResultType.dart';

class DefaultSigInRepository extends SignInRepository {

  SignInService _signInService;
   DefaultSigInRepository({SignInService? signInService })
      : _signInService =  signInService ?? DeafultSignInService();


  @override
  Future<Result<SignInDecodable, Failure>> signIn({required SignInBodyParameters params}) async{
  
try{
    final result = await _signInService.signIn(bodyParameters: params.toMap());
    SignInDecodable decodable = SignInDecodable.fromMap(result);
    return Result.success(decodable);

   } on Failure catch(f)   {
    return Result.Failure(Failure.getFirebaseAuthErrorMessage(error: f.error));
    
   }
  }


 
}