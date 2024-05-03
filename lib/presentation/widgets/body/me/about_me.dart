import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_site/core/extensions/app_extensions.dart';
import 'package:portfolio_site/core/theme/app_text_style.dart';
import 'package:portfolio_site/core/theme/colors.dart';
import 'package:portfolio_site/core/utils/add_space.dart';
import 'package:portfolio_site/core/utils/get_size.dart';

import '../../../../core/constant/strings/strings_manger.dart';
import 'custom_divider.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(context),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: context.height * .12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.ltr,
          children: [
            const Text(
              StringsManger.aboutMe,
              style: TextStyleManger.s32p2,
            ),
            const AddHeight(height: 10),
            const Expanded(
              flex: 40,
              child: AutoSizeText(
                StringsManger.longIntroduction,
                style: TextStyleManger.s18,
                textAlign: TextAlign.justify,
              ),
            ),
            const AddHeight(height: 10),
            Center(
              child: CustomDivider(
                color: ColorsManger.white,
                height: 2,
                width: context.width / 4,
              ),
            ),
            const AddHeight(height: 10),
            Expanded(
              flex: 20,
              child: Row(
                children: [
                  AutoSizeText(
                    StringsManger.twoYears,
                    style: TextStyleManger.s32p2.copyWith(fontSize: 96),
                  ),
                  const AddWidth(width: 20),
                  const Flexible(
                    child: AutoSizeText(
                      StringsManger.twoYearsExperience,
                      style: TextStyleManger.s24,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 40,
              child: GridView.builder(
                itemCount: 7,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7,
                ),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const SizedBox(
                    height: 100,
                    width: 100,
                    child: Card(
                      child: Column(
                        children: [Text("Firebase")],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
