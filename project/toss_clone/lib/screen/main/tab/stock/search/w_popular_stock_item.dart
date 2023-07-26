import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_empty_expanded.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_popular_stock.dart';
import 'package:flutter/material.dart';

class PopularStockItem extends StatelessWidget {
  const PopularStockItem({super.key, required this.stock, required this.index});

  final PopularStock stock;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Tap(
        child: Row(
          children: [
            SizedBox(width: 40, child: index.text.make()),
            width30,
            Expanded(
              child: stock.stockName.text.make(),
            ),
            stock.todayPercentageString.text
                .color(stock.getPriceColor(context))
                .make(),
          ],
        ),
        onTap: () {
          Nav.push(StockDetailScreen(stockName: stock.stockName));
        },
      ),
    );
  }
}
