import 'package:equatable/equatable.dart';

class TextMessageEntity extends Equatable {
  final String? recipientId;
  final String? senderId;
  final String? senderName;
  final String? type;
  final String? time;
  final String? content;
  final String? receiverName;
  final String? messageId;

  TextMessageEntity({
    this.content,
    this.messageId,
    this.receiverName,
    this.recipientId,
    this.senderId,
    this.senderName,
    this.time,
    this.type,
  });

  @override
  List<Object?> get props => [
        receiverName,
        recipientId,
        senderId,
        type,
        content,
        messageId,
        senderName,
        time,
      ];
}
