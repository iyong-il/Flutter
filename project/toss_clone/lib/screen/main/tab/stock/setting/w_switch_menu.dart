import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_empty_expanded.dart';
import 'package:fast_app_base/screen/main/tab/stock/setting/w_os_switch.dart';
import 'package:flutter/material.dart';

class SwitchMenu extends StatelessWidget {
  const SwitchMenu({super.key, required this.text, required this.isOn, required this.onTap});

  final String text;
  final bool isOn;
  final ValueChanged<bool> onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        text.text.bold.make(),
        emptyExpanded,
        OsSwitch(isOn: isOn, onTap: onTap)
      ],
    ).p20();
  }
}
