import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_site/core/extensions/app_extensions.dart';
import 'package:portfolio_site/core/theme/colors.dart';

import '../../../core/enum/enum.dart';
import '../../bloc/home_control_bloc.dart';

class CustomMenuButton extends StatefulWidget {
  const CustomMenuButton({super.key});

  @override
  State<CustomMenuButton> createState() => _CustomMenuButtonState();
}

class _CustomMenuButtonState extends State<CustomMenuButton> {
  @override
  Widget build(BuildContext context) {
    final List<PopupMenuItem<int>> popupItems = List.generate(
      AppBarHeaders.values.length,
      (index) => PopupMenuItem<int>(
        onTap: () {
          log("$index this the value");
          context
              .read<HomeControlBloc>()
              .add(HomeControlEventGoToPage(appBarHeaders: index));
        },
        child: Center(
          child: Text(
            AppBarHeaders.values[index].getString(),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
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
            itemBuilder: (context) => popupItems,
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
