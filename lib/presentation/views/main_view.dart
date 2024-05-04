import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_site/presentation/bloc/home_control_bloc.dart';

import '../widgets/appBar/app_bar.dart';
import '../widgets/body/home_body.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeControlBloc, HomeControlState>(
      builder: (context, state) {
        return const Scaffold(
          appBar: SiteAppBar(),
          body: HomeBody(),
        );
      },
    );
  }
}
