import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_site/presentation/bloc/home_control_bloc.dart';

import '../../../core/theme/app_text_style.dart';
import '../../../core/theme/colors.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    super.key,
    required this.title,
    required this.index,
  });

  final String title;

  final int index;

  @override
  Widget build(BuildContext context) {
    // const unSelectedColor = MaterialStatePropertyAll<Color>(Colors.white);
    const selectedColor =
        MaterialStatePropertyAll<Color>(ColorsManger.secondaryColor);
    return BlocBuilder<HomeControlBloc, ControlState>(
      builder: (context, state) {
        log("button index => ${context.read<HomeControlBloc>().appBarHeaderIndex}");
        bool isSelected =
            context.read<HomeControlBloc>().appBarHeaderIndex == index;
        // bool isHovering = false;
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: MouseRegion(
            onEnter: (event) {},
            child: TextButton(
              onPressed: () {
                context
                    .read<HomeControlBloc>()
                    .add(HomeControlEventGoToPage(appBarHeaders: index));
              },
              style: const ButtonStyle(
                overlayColor: selectedColor,
              ),
              child: AutoSizeText(
                title,
                style: TextStyleManger.s17.copyWith(
                  color:
                      isSelected ? ColorsManger.secondaryColor : Colors.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
