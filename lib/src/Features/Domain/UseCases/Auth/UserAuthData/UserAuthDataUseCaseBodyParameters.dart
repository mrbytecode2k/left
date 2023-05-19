class GetUserDataUseCaseParameters{

  GetUserDataUseCaseParameters({
  required this.idToken
  });

  final String idToken;

  Map<String,dynamic> toMap() => {
  "idToken": idToken,
  };

}