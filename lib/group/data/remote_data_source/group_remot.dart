import 'package:chat2/group/domain/entities/group_entities.dart';
import 'package:chat2/group/domain/entities/text_message_entities.dart';

abstract class GroupRemoteDataSource {
  Future<void> getCreatGroup(GroupEntity groupEntity);
  Future<void> updateGroup(GroupEntity groupEntity);
  Stream<List<GroupEntity>> getGroups();
  Future<void> sendTextMessage(
      TextMessageEntity textMessageEntity, String channalId);
  Stream<List<TextMessageEntity>> getMessages(String channalId);
}
