import 'package:chat2/user/domain/entities/user_entity.dart';

abstract class UserRemoteDataSource {
  Future<void> getCreateCurrentUser(UserEntity user);
  Future<void> forgotPassword(String email);

  Future<bool> isSignIn();
  Future<void> signIn(UserEntity user);
  Future<void> signUp(UserEntity user);
  Future<void> signOut();
  Future<void> getUpdateUser(UserEntity user);
  Future<String> getCurrentUId();
  Stream<List<UserEntity>> getAllUsers(UserEntity user);
  Stream<List<UserEntity>> getSingleUser(UserEntity user);
}
