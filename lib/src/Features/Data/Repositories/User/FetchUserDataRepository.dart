import 'package:left/src/Features/Data/Decodables/User/UserDecodable.dart';
import 'package:left/src/Base/AppError/AppError.dart';
import 'package:left/src/Features/Domain/Interfaces/Interfaces.dart';
import 'package:left/src/Services/FirebaseServices/RealTimeDatabaseService/Interfaces/Interfaces.dart';
import 'package:left/src/Services/FirebaseServices/RealTimeDatabaseService/Services/RealtimeDatabaseServices.dart';
import 'package:left/src/Utils/Helpers/ResultType/ResultType.dart';

extension Paths on DefaultFetchUserDataRepository{
 static String path ="users/";
}

class DefaultFetchUserDataRepository extends FetchUserDataRepository{
  //Dependencias

RealtimeDatabaseService _realtimeDatabaseService;

DefaultFetchUserDataRepository({RealtimeDatabaseService? realtimeDatabaseService })
  : _realtimeDatabaseService = realtimeDatabaseService ??  DefaultRealtimeDatabaseService();

  @override
  Future<Result<UserDecodable, Failure>> fetchUserData({required String localId}) async {
    // TODO: implement fetchUserAuthData
    var fullpath= path + localId;
    try {
      final result = await _realtimeDatabaseService.getData(path: fullpath);
      UserDecodable _decodable = UserDecodable.fromMap(result);
      return Result.success(_decodable);
    } on Failure catch (f) {
      return Result.Failure(f);
    }
  }
}