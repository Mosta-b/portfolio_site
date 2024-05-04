import 'package:flutter/material.dart';

class TechMap {
  static const List<String> firebaseInfo = [
    "Firebase",
    "https://i.imgur.com/STKdllF.png",
  ];
  static const List<String> blocInfo = [
    "Firebase",
    "https://i.imgur.com/STKdllF.png",
  ];
  static const List<String> androidStudioInfo = [
    "Firebase",
    "https://i.imgur.com/STKdllF.png",
  ];
  static Map<Color, List> techMapWithColor = {
    Colors.amber: firebaseInfo,
    Colors.blueAccent.shade400: blocInfo,
    Colors.greenAccent: androidStudioInfo,
  };
}
