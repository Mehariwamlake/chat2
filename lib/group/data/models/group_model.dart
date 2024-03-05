import 'package:chat2/group/domain/entities/group_entities.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GroupModel extends GroupEntity {
  GroupModel({
    final String? groupName,
    final String? groupProfileImage,
    final String? uid,
    final String? createdAt,
    final String? groupId,
    final String? lastMessage,
  }) : super(
          groupId: groupId,
          groupName: groupName,
          createdAt: createdAt,
          groupprofileImage: groupProfileImage,
          uid: uid,
          lastMessage: lastMessage,
        );

  factory GroupModel.fromSnapshoot(DocumentSnapshot snapshot) {
    return GroupModel(
      groupId: snapshot.get('groupId'),
      createdAt: snapshot.get('createdAt'),
      groupName: snapshot.get('groupName'),
      groupProfileImage: snapshot.get('groupProfileImage'),
      lastMessage: snapshot.get('lastMessage'),
      uid: snapshot.get('uid'),
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      "groupName": groupName,
      "createdAt": createdAt,
      "groupId": groupId,
      "groupProfileImage": groupprofileImage,
      "lastMessage": lastMessage,
      "uid": uid,
    };
  }
}
