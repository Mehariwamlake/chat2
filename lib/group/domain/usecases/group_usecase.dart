import 'package:chat2/group/domain/entities/group_entities.dart';
import 'package:chat2/group/domain/entities/text_message_entities.dart';
import 'package:chat2/group/domain/repositories/group_repostiory.dart';

class GetCreateGroupUseCase {
  final GroupRepository repository;

  GetCreateGroupUseCase({required this.repository});

  Future<void> call(GroupEntity group) {
    return repository.getCreatGroup(group);
  }
}

class GetGroupsUseCase {
  final GroupRepository repository;
  GetGroupsUseCase({required this.repository});

  Stream<List<GroupEntity>> call() {
    return repository.getGroups();
  }
}

class GetMessageUseCase {
  final GroupRepository repository;

  GetMessageUseCase({required this.repository});
  Stream<List<TextMessageEntity>> call(String channalId) {
    return repository.getMessages(channalId);
  }
}

class SendTextMessageUseCase {
  final GroupRepository repository;

  SendTextMessageUseCase({required this.repository});

  Future<void> call(
      TextMessageEntity textMessageEntity, String channalId) async {
    return await repository.sendTextMessage(textMessageEntity, channalId);
  }
}

class UpdateGroupUseCase {
  final GroupRepository repository;

  UpdateGroupUseCase({required this.repository});
  Future<void> call(GroupEntity groupEntity) {
    return repository.updateGroup(groupEntity);
  }
}
