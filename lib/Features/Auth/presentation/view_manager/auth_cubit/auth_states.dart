abstract class AuthStates{}
class AuthInitial extends AuthStates{}
class LoginLoading extends AuthStates{}
class LoginFailure extends AuthStates{
  final String errMessage;

  LoginFailure({required this.errMessage});
}
class LoginSuccess extends AuthStates{}
class RegisterLoading extends AuthStates{}
class RegisterFailure extends AuthStates{
  final String errMessage;

  RegisterFailure({required this.errMessage});

}
class RegisterSuccess extends AuthStates{}