import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/common/widget/w_empty_expanded.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/w_arrow.dart';

class PointButton extends StatelessWidget {
  const PointButton({super.key, required this.point});

  final int point;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        '내 포인트'.text.color(context.appColors.lessImportantText).make(),
        emptyExpanded,
        '$point 원'.text.bold.make(),
        width10,
        Arrow(
          color: context.appColors.lessImportantText,
        ),
      ],
    );
  }
}
