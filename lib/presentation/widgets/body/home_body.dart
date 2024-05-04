import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_site/core/extensions/app_extensions.dart';
import 'package:portfolio_site/presentation/bloc/home_control_bloc.dart';
import 'package:portfolio_site/presentation/widgets/body/home/home.dart';

import 'me/about_me.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initListenerForInteractWithHeaderIndex();
    });
  }

  void _initListenerForInteractWithHeaderIndex() {
    _scrollController.addListener(() {
      int currentPage =
          (_scrollController.offset / MediaQuery.of(context).size.width)
              .round();
      context
          .read<HomeControlBloc>()
          .add(HomeControlEventChange(appBarHeaders: currentPage));
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeControlBloc, HomeControlState>(
      listener: (context, state) {
        const duration = Duration(milliseconds: 300);
        if (state.homeControlModel.isEvent) {
          double offset = state.homeControlModel.pageIndex *
              MediaQuery.of(context).size.width;

          _scrollController.animateTo(
            offset,
            duration: duration,
            curve: Curves.easeInOut,
          );
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.width * .08),
              child: SingleChildScrollView(
                controller: _scrollController,
                child: const Column(
                  children: [
                    Home(),
                    AboutMe(),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
