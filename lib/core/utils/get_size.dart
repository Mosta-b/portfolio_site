//  get  screen height
import 'package:flutter/material.dart';

double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

//  get  screen width

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

//  get  screen aspectRatio

double getScreenAspectRatio(BuildContext context) {
  return MediaQuery.of(context).size.aspectRatio;
}
