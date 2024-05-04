import 'package:flutter/material.dart';

class TechMap {
  static const List<String> flutterInfo = [
    "Flutter",
    "https://i.imgur.com/FGbvC6v.png",
  ];
  static const List<String> firebaseInfo = [
    "Firebase",
    "https://i.imgur.com/STKdllF.png",
  ];
  static const List<String> blocInfo = [
    "Bloc",
    "https://i.imgur.com/yH51Bei.png",
  ];
  static const List<String> androidStudioInfo = [
    "Android Studio",
    "https://i.imgur.com/rzC7Gan.png",
  ];
  static const List<String> gitInfo = [
    "Git",
    "https://i.imgur.com/lMS2pkm.png",
  ];
  static const List<String> githubInfo = [
    "GitHub",
    "https://i.imgur.com/y93EXWH.png",
  ];
  static const List<String> chatGptInfo = [
    "Chatgpt",
    "https://i.imgur.com/vBmdQf2.png",
  ];
  static const List<String> figmaInfo = [
    "Figma",
    "https://i.imgur.com/rojGEKq.png",
  ];
  static Map<Color, List<String>> techMapWithColor = {
    Colors.amber: firebaseInfo,
    Colors.blueAccent.shade400: blocInfo,
    Colors.greenAccent: androidStudioInfo,
    Colors.deepOrange.shade600: gitInfo,
    Colors.black: githubInfo,
    Colors.green.shade500: chatGptInfo,
    Colors.purple: figmaInfo,
  };
}
