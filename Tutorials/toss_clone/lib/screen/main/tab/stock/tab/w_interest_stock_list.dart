import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:fast_app_base/screen/main/tab/stock/stocks_dummy.dart';
import 'package:flutter/material.dart';

import 'w_stock_item.dart';

class InterestStockList extends StatelessWidget {
  const InterestStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: MainScreenState.bottomNavigationHeight + 10),
      child: Column(
        children: [
          ...myInterestStocks.map((e) => StockItem(stock: e)).toList(),
        ],
      ),
    );
  }
}
