import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_empty_expanded.dart';
import 'package:flutter/material.dart';

import 'w_arrow.dart';

class LongButton extends StatelessWidget {
  const LongButton({
    super.key,
    this.icon,
    required this.title,
    this.isArrow = true,
    required this.onTap,
  });

  final Icon? icon;
  final String title;
  final VoidCallback onTap;
  final bool isArrow;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          if (icon != null) icon!,
          if (icon != null) width10,
          title.text.make(),
          emptyExpanded,
          if (isArrow)
            Arrow(
              color: context.appColors.lessImportantText,
            )
        ],
      ),
    );
  }
}
