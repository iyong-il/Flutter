import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import 's_stock_detail.dart';
import 'serch_stock_data.dart';

class SearchAutoCompleteList extends StatelessWidget
    with SearchStockDataProvider {
  SearchAutoCompleteList(this.controller, {super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final stock = searchData.autoCompleteList[index];
        final stockName = stock.stockName;
        return Tap(
          onTap: () {
            controller.clear();
            searchData.addHistory(stock);
            Nav.push(
              StockDetailScreen(stockName: stockName),
            );
          },
          child: (stockName).text.make().p(20),
        );
      },
      itemCount: searchData.autoCompleteList.length,
    );
  }
}
