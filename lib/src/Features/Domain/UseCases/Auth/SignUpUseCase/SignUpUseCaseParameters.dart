import 'package:left/src/Features/Domain/Entities/User/UserEntity.dart';


class SignUpUseCaseParameters {
  SignUpUseCaseParameters({ required this.username,
                            required this.email,
                            required this.password,
                            this.phone,
                            this.date });

  final String? username;
  final String email;
  final String password;
  final String? phone;
  final String? date;
  
}
