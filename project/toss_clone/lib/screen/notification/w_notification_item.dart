import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_empty_expanded.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationItemWidget extends StatefulWidget {
  const NotificationItemWidget(
      {super.key, required this.notification, required this.onTap});

  final TossNotification notification;
  final VoidCallback onTap;

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  static const double leftPadding = 10;
  static const double iconWidth = 25;

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        color: widget.notification.isRead
            ? context.backgroundColor
            : context.appColors.unReadColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Width(leftPadding),
                Image.asset(
                  widget.notification.type.iconPath,
                  width: iconWidth,
                ),
                widget.notification.type.name.text
                    .size(12)
                    .color(context.appColors.lessImportantText)
                    .make(),
                emptyExpanded,
                timeago
                    .format(widget.notification.time,
                        locale: context.locale.languageCode)
                    .text
                    .size(13)
                    .color(context.appColors.lessImportantText)
                    .make(),
                width10
              ],
            ),
            widget.notification.descripttion.text
                .make()
                .pOnly(left: leftPadding + iconWidth),
          ],
        ),
      ),
    );
  }
}
