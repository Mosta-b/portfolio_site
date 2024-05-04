import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_site/core/extensions/app_extensions.dart';
import 'package:portfolio_site/core/theme/app_text_style.dart';

import '../../../../core/enum/enum.dart';

class TechCard extends StatelessWidget {
  const TechCard({
    super.key,
    required this.title,
    required this.image,
    required this.color,
  });

  final String title;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final bool showTitle = context.width > DeviceType.ipad.getMaxWidth();
    return Card(
      elevation: 3,
      shadowColor: color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: showTitle ? 80 : 100,
              child: Image.network(
                alignment: Alignment.center,
                image,
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
            showTitle
                ? Expanded(
                    flex: 20,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: AutoSizeText(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyleManger.s24.copyWith(color: color),
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
