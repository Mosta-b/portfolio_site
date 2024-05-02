import 'package:flutter/material.dart';
import 'package:portfolio_site/core/constant/appBar/app_constants.dart';
import 'package:portfolio_site/core/enum/enum.dart';
import 'package:portfolio_site/core/theme/colors.dart';
import 'package:portfolio_site/core/extensions/app_extensions.dart';
import 'package:portfolio_site/presentation/widgets/appBar/menu_button.dart';

import 'app_bar_actions.dart';
import 'app_bar_title.dart';

class SiteAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SiteAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsManger.appBarColor,
      padding: EdgeInsets.symmetric(
        horizontal: _getHorizontalPadding(context),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: SizedBox(
          width: context.width < DeviceType.ipad.getMaxWidth()
              ? context.width * .5
              : context.width * .2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const AppBarTitle(),
              context.width > DeviceType.ipad.getMaxWidth()
                  ? const AppBarActions()
                  : const CustomMenuButton(),
            ],
          ),
        ),
      ),
    );
  }

  double _getHorizontalPadding(BuildContext context) {
    if (context.width < DeviceType.ipad.getMaxWidth()) {
      return context.width * .03;
    } else {
      return context.width * .08;
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppConstants.appBarHeight);
}
