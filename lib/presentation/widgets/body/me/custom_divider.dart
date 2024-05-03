import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  const CustomDivider({
    super.key,
    required this.color,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: height,
      width: width,
    );
  }
}
