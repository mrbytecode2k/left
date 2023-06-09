import 'package:left/src/Base/AppError/AppError.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:left/src/Base/ApiService/ApiService.dart';
import 'package:left/src/test/Base/ApiService/Mocks/TestApiMocks.dart';


abstract class _Constants{
  static String postEndpoint="https://jsonplaceholder.typicode.com/posts";
}

void main(){


final ApiService _testApiService= DefaultApiService();

group("Test correct Connection of Api Service", () { 
  test("Test Correct post connection to Jsonplaceholder", ()async {
    final bodyParams= CorrectPostBodyParams(title: 'foo',body: 'bar',userId:1);
    final result = await _testApiService.getDataFromPostRequest(bodyParameters: bodyParams.toMap(), url: _Constants.postEndpoint);

    expect(result, Map.from(result));
  });
});


}
