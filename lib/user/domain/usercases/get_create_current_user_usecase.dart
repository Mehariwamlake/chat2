import 'package:chat2/user/domain/entities/user_entity.dart';
import 'package:chat2/user/domain/repository/user_repository.dart';

class GetCreateCurrentUserUseCase {
  final UserRepository repository;

  GetCreateCurrentUserUseCase({required this.repository});

  Future<void> call(UserEntity user) {
    return repository.getCreateCurrentUser(user);
  }
}
