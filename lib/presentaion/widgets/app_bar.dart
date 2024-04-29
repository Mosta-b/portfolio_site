import 'package:flutter/material.dart';
import 'package:portfolio_site/core/constant/appBar/app_constants.dart';
import 'package:portfolio_site/core/enum/enum.dart';
import 'package:portfolio_site/core/constant/theme/colors.dart';
import 'package:portfolio_site/core/extensions/app_extensions.dart';

class SiteAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SiteAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: _getHorizontalPadding(context),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: context.width < DeviceType.ipad.getMaxWidth()
                  ? context.width * .5
                  : context.width * .2,
              child: FittedBox(
                alignment: Alignment.center,
                child: Text(
                  "Mustapha BENNAI",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: ColorsManger.secondaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            SizedBox(
              width: context.width < DeviceType.ipad.getMaxWidth()
                  ? context.width * .5
                  : context.width * .2,
              child: FittedBox(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text("Home"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("About Me"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Projects"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Contact"),
                    ),
                  ],
                ),
              ),
            ),
          ],
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
