import 'package:flutter/material.dart';
import 'package:portfolio_site/core/extensions/app_extensions.dart';
import 'package:portfolio_site/core/theme/colors.dart';

import '../../../core/enum/enum.dart';
import 'app_bar_button.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 60,
      child: FittedBox(
        alignment: Alignment.centerRight,
        child: Container(
          color: ColorsManger.appBarColor,
          child: Row(
            children: List.generate(
              AppBarHeaders.values.length,
              (index) => AppBarButton(
                title: AppBarHeaders.values[index].getString(),
                index: index,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
