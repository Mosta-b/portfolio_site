import 'package:flutter/material.dart';
import 'package:portfolio_site/core/extensions/app_extensions.dart';
import 'package:portfolio_site/core/theme/app_text_style.dart';
import 'package:portfolio_site/core/utils/get_size.dart';

import '../../../core/constant/strings/strings_manger.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(context),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: context.height * .12),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringsManger.featuredProjects,
              style: TextStyleManger.s32p2,
            ),
          ],
        ),
      ),
    );
  }
}
