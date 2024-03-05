import 'package:equatable/equatable.dart';

class GroupEntity extends Equatable {
  final String? groupName;
  final String? groupprofileImage;
  final String? createdAt;
  final String? groupId;
  final String? uid;
  final String? lastMessage;

  GroupEntity({
    this.createdAt,
    this.groupId,
    this.groupName,
    this.groupprofileImage,
    this.lastMessage,
    this.uid,
  });

  @override
  List<Object?> get props => [
        groupId,
        groupName,
        createdAt,
        groupprofileImage,
        lastMessage,
        uid,
      ];
}
