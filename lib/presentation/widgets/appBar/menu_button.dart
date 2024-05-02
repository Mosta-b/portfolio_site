import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_site/core/extensions/app_extensions.dart';
import 'package:portfolio_site/core/theme/colors.dart';

import '../../../core/enum/enum.dart';

class CustomMenuButton extends StatefulWidget {
  const CustomMenuButton({super.key});

  @override
  State<CustomMenuButton> createState() => _CustomMenuButtonState();
}

class _CustomMenuButtonState extends State<CustomMenuButton> {
  final List<PopupMenuItem<String>> _popupItems = List.generate(
    AppBarHeaders.values.length,
    (index) => PopupMenuItem<String>(
      child: Center(
        child: Text(
          AppBarHeaders.values[index].getString(),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 50,
      child: FittedBox(
        alignment: Alignment.centerRight,
        child: AnimatedCrossFade(
          crossFadeState: CrossFadeState.showFirst,
          duration: const Duration(milliseconds: 200),
          firstChild: PopupMenuButton(
            color: ColorsManger.secondaryColor,
            icon: const Icon(
              CupertinoIcons.line_horizontal_3,
              color: ColorsManger.secondaryColor,
            ),
            itemBuilder: (context) => _popupItems,
            onSelected: (value) {},
          ),
          secondChild: IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.clear_circled),
          ),
        ),
      ),
    );
  }
}
