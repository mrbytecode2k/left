import 'dart:convert';

class Failure {
  String? message;
  Map<String,dynamic> error={};

  @override
  String toString()=> message ?? "";
  
  Failure.fromMessage({String? message}){
    this.message=message;
  }

Failure.fromBody({required String body}){

var jsondata=jsonDecode(body);
this.error=jsondata;
}


}