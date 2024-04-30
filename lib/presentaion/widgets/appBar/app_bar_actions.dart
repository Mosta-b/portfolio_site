import 'package:flutter/material.dart';
import 'package:portfolio_site/core/extensions/app_extensions.dart';

import '../../../core/enum/enum.dart';
import 'app_bar_button.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        AppBarHeaders.values.length,
        (index) => AppBarButton(
          title: AppBarHeaders.values[index].getString(),
          onPressed: () {},
          index: index,
        ),
      ),
    );
  }
}
