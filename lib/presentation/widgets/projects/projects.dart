import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_site/core/extensions/app_extensions.dart';
import 'package:portfolio_site/core/theme/app_text_style.dart';
import 'package:portfolio_site/core/utils/add_space.dart';
import 'package:portfolio_site/core/utils/get_size.dart';

import '../../../core/constant/appBar/app_constants.dart';
import '../../../core/constant/strings/strings_manger.dart';
import '../../../core/enum/enum.dart';
import '../../../data/project.dart';
import 'project_card.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(context),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: context.height * .12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              StringsManger.featuredProjects,
              style: TextStyleManger.s32p2,
              textAlign: TextAlign.start,
            ),
            const AddHeight(height: 10),
            const Text(
              StringsManger.featuredProjectsAbout,
              style: TextStyleManger.s18,
              textAlign: TextAlign.start,
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: _getCrossAxisCount(context.width),
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final Project project = AppConstants.listOfProject[index];
                  return ProjectCard(
                    project: project,
                  );
                },
                itemCount: AppConstants.listOfProject.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  int _getCrossAxisCount(double deviceWidth) {
    int numOfServices = AppConstants.listOfProject.length;
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 3;
    } else {
      return numOfServices > 3 ? 3 : numOfServices;
    }
  }
}
