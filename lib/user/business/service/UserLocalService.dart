
import '../model/User/User.dart';

abstract class UserLocalService{
  Future<dynamic> saveUser(user);
  Future<dynamic> saveToken(Token);

  Future<User> getUser();
  Future<String> getToken();

  Future<dynamic> disconnect();
}