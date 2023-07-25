import 'package:fast_app_base/common/widget/w_empty_expanded.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_stock.dart';
import 'package:flutter/material.dart';

import '../../../../../common/common.dart';

class StockItem extends StatelessWidget {
  const StockItem({super.key, required this.stock});
  final Stock stock;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.backgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Image.asset(stock.stockImagePath, width: 50,),
          width20,
          Expanded(child: stock.stockName.text.size(18).bold.make(),),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
           children: [
             stock.todayPercentageString.text.color(stock.getPriceColor(context)).make(),
             '${stock.currentPrice}원'.text.color(context.appColors.lessImportantText).make()
           ],
          )
        ],
      ),
    );
  }
}
