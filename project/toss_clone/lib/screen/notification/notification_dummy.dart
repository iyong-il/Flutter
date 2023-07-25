import 'package:fast_app_base/common/dart/extension/num_duration_extension.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';

import 'vo/vo_notification.dart';

final List<TossNotification> notificationDummies = [
  TossNotification(
    NotificationType.tossPay,
    '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요.',
    DateTime.now().subtract(27.minutes),
  ),
  TossNotification(
    NotificationType.stock,
    '인적분할에 대해 알려드릴게요.',
    DateTime.now().subtract(1.hours),
  ),
  TossNotification(
    NotificationType.walk,
    '1,000걸음 이상 걸었다면 포인트 받으세요.',
    DateTime.now().subtract(1.hours),
  )
  ,TossNotification(
    NotificationType.moneyTip,
    '유럽 식품 물가가 치솟고 있어요. \n 이용일님, 유럽여행에 관심이 있다면 확인해보세요.',
    DateTime.now().subtract(8.hours),
  )
  ,TossNotification(
    NotificationType.walk,
    '오늘 1,000걸음을 넘겼어요. 포인트를 받아보세요',
    DateTime.now().subtract(11.hours),
  )
  ,TossNotification(
    NotificationType.luck,
    '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요.',
    DateTime.now().subtract(27.minutes),
  )
  ,TossNotification(
    NotificationType.stock,
    '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요.',
    DateTime.now().subtract(27.minutes),
  )
  ,
  TossNotification(
    NotificationType.tossPay,
    '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요.',
    DateTime.now().subtract(1.days),
  )
];
