import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/benefit/vo_benefit.dart';
import 'package:flutter/material.dart';

class BenefitItem extends StatelessWidget {
  const BenefitItem(this.benefit, {super.key});

  final Benefit benefit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            benefit.imagePath,
            width: 50,
            height: 50,
          ),
        ),
        width10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            benefit.title.text.size(13).make(),
            height5,
            benefit.subTitle.text.bold.color(context.appColors.blueText).size(13).make(),
          ],
        )
      ],
    ).pSymmetric(v: 20);
  }
}
