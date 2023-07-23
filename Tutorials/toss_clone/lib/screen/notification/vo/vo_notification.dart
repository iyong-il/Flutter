import 'notification_type.dart';

class TossNotification {
  final NotificationType type;
  final String descripttion;
  final DateTime time;
  bool isRead;

  TossNotification(this.type, this.descripttion, this.time,
      {this.isRead = false});
}
