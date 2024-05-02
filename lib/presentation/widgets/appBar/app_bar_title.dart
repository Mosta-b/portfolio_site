import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_site/core/theme/app_text_style.dart';
import 'package:universal_html/html.dart' as html;
import '../../../core/constant/strings/strings_manger.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 40,
      child: FittedBox(
        alignment: Alignment.centerLeft,
        child: TextButton(
          onPressed: () {
            html.window.location.reload();
          },
          child: const AutoSizeText(
            StringsManger.myName,
            style: TextStyleManger.s32p2,
          ),
        ),
      ),
    );
  }
}
