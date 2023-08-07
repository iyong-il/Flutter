import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/w_image_button.dart';
import '../../../../common/widget/w_long_button.dart';
import '../stock/search/s_search_stock.dart';
import '../stock/setting/s_setting.dart';

class AllFragment extends StatefulWidget {
  const AllFragment({super.key});

  @override
  State<AllFragment> createState() => _AllFragmentState();
}

class _AllFragmentState extends State<AllFragment> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: context.appColors.roundedLayoutBackground,
          pinned: true,
          actions: [
            ImageButton(
              onTap: () {
                Nav.push(const SearchStockScreen());
              },
              imagePath: '$basePath/icon/stock_search.png',
            ),
            ImageButton(
              onTap: () {
                Nav.push(const SettingScreen());
              },
              imagePath: '$basePath/icon/stock_settings.png',
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title,
              height20,
              top,
              LongButton(
                icon: Icon(Icons.add),
                title: '보안과 인증',
                onTap: () {},
              ),
              LongButton(
                icon: Icon(Icons.add),
                title: '내 신용점수',
                onTap: () {},
              ),
              LongButton(
                icon: Icon(Icons.add),
                title: '진행중인 이벤트',
                onTap: () {},
              ),
              const Line(),
              LongButton(
                icon: Icon(Icons.add),
                title: '토스프라임',
                isArrow: false,
                onTap: () {},
              ),
              LongButton(
                icon: Icon(Icons.add),
                title: '토스증권 주식 모으기',
                isArrow: false,
                onTap: () {},
              ),
              LongButton(
                icon: Icon(Icons.add),
                title: '자동이체',
                isArrow: false,
                onTap: () {},
              ),
            ],
          ).pSymmetric(h: 20),
        )
      ],
    );
  }

  Widget get title => Container(
        child: '토스증권'.text.size(24).bold.make(),
      );

  Widget get top => Row(
        children: [
          Expanded(
            child: Container(
              height: 60,
              color: Colors.red,
            ),
          ),
          width10,
          Expanded(
            child: Container(
              height: 60,
              color: Colors.green,
            ),
          ),
          width10,
          Expanded(
            child: Container(
              height: 60,
              color: Colors.blue,
            ),
          ),
        ],
      );
}
