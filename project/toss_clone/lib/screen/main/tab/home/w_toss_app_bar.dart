import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_empty_expanded.dart';
import 'package:fast_app_base/screen/notification/s_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TossAppBar extends StatefulWidget {
  static const double appbarHeight = 60;

  const TossAppBar({super.key});

  @override
  State<TossAppBar> createState() => _TossAppBarState();
}

class _TossAppBarState extends State<TossAppBar> {
  final bool _showRedDot = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: TossAppBar.appbarHeight,
      color: context.appColors.appBarBackground,
      child: Row(
        children: [
          width10,
          Image.asset(
            '$basePath/icon/toss.png',
            height: 30,
          ),
          emptyExpanded,
          Image.asset(
            '$basePath/icon/map_point.png',
            height: 30,
          ),
          width10,
          Tap(
            child: Stack(
              children: [
                Image.asset(
                  '$basePath/icon/notification.png',
                  height: 30,
                ),
                if (_showRedDot)
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  )
                // else
                //   Positioned.fill(
                //     child: Align(
                //       alignment: Alignment.topRight,
                //       child: Container(
                //         width: 6,
                //         height: 6,
                //         decoration: BoxDecoration(
                //           shape: BoxShape.circle,
                //           color: Colors.blue,
                //         ),
                //       ),
                //     ),
                //   )
              ],
            )
            // .animate(onPlay: (controller) => controller.repeat())
            // .shake(duration: 2000.milliseconds)
            // .then()
            // .fadeOut(duration: 2000.milliseconds),
            ,
            onTap: () {
              setState(() {
                _showRedDot != !_showRedDot;
                // TODO :: 알림화면으로 이동
                Nav.push(const NotificationScreen());
              });
            },
          ),
          width10,
        ],
      ),
    );
  }
}
