import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SiteAppBar(),
    );
  }
}
