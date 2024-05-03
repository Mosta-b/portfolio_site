import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_site/core/constant/assets/assets_manger.dart';
import 'package:portfolio_site/core/extensions/app_extensions.dart';
import 'package:portfolio_site/core/theme/app_text_style.dart';
import 'package:portfolio_site/core/theme/colors.dart';
import 'package:portfolio_site/core/utils/add_space.dart';
import 'package:portfolio_site/core/utils/get_size.dart';

import '../../../../core/constant/strings/strings_manger.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(context),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: context.height * .12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                textDirection: TextDirection.ltr,
                children: [
                  const Text(
                    StringsManger.hi,
                    style: TextStyleManger.s52,
                  ),
                  AddHeight(height: getScreenHeight(context) * .02),
                  const AutoSizeText(
                    StringsManger.introduction,
                    style: TextStyleManger.s24,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    // heightFactor: 1.5,
                    // widthFactor: 2,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: getScreenWidth(context) * .06,
                        top: getScreenWidth(context) * .06,
                      ),
                      child: Container(
                        width: getScreenWidth(context) * .25,
                        height: getScreenWidth(context) * .25,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorsManger.secondaryColor,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(360),
                      child: Image.asset(
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                        AssetsManger.profilePicture,
                        width: getScreenWidth(context) * .2,
                        height: getScreenWidth(context) * .2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
