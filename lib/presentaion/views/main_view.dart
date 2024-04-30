import 'package:flutter/material.dart';

import '../widgets/appBar/app_bar.dart';
import '../widgets/body/home_body.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SiteAppBar(),
      body: HomeBody(),
    );
  }
}
