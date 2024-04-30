import 'package:flutter/material.dart';

import '../../../core/theme/app_text_style.dart';
import '../../../core/theme/colors.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.index,
  });

  final String title;
  final Function() onPressed;
  final int index;

  @override
  Widget build(BuildContext context) {
    const unSelectedColor = MaterialStatePropertyAll<Color>(Colors.white);
    // const SelectedColor = MaterialStatePropertyAll<Color>(Colors.purpleAccent);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          onPressed;
        },
        style: const ButtonStyle(
          overlayColor:
              MaterialStatePropertyAll<Color>(ColorsManger.secondaryColor),
          foregroundColor: unSelectedColor,
          textStyle: MaterialStatePropertyAll<TextStyle>(TextStyleManger.s17),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
          ),
        ),
      ),
    );
  }
}
