import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;
import '../../../core/theme/colors.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () {
          html.window.location.reload();
        },
        child: Text(
          "Mustapha BENNAI",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: ColorsManger.secondaryColor,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
