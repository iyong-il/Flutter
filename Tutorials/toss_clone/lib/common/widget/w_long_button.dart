import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_empty_expanded.dart';
import 'package:flutter/material.dart';

import 'w_arrow.dart';

class LongButton extends StatelessWidget {
  const LongButton({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          title.text.make(),
          emptyExpanded,
          Arrow(
            color: context.appColors.lessImportantText,
          )
        ],
      ),
    );
  }
}
