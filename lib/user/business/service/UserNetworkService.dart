import '../model/User/CreateUserRequest.dart';
import '../model/User/User.dart';

abstract class UserNetworkService{
  <String> createUser(CreateUserRequest data);
  Future<User> getUser(String token);
  Future<bool> updateUser(String token, data);
  Future<String> authenticate(data);
  Future<dynamic> updatePassword(token, data);
  Future<dynamic> requestPasswordReset(data);
  Future<dynamic> confirmResetPasswordOTPCode(data);
  Future<dynamic> setNewPassword(data);

}