import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class StockDetailScreen extends StatelessWidget {
  const StockDetailScreen({super.key, required this.stockName});

  final String stockName;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: stockName.text.make(),
    );
  }
}
