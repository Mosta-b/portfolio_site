import 'dart:developer';

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
  final home = GlobalKey();
  final aboutMe = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initListenerForInteractWithHeaderIndex();
    });
  }

  void _initListenerForInteractWithHeaderIndex() {
    double homeHeight = home.currentContext!.size!.height;
    double aboutHeight = aboutMe.currentContext!.size!.height;
    _scrollController.addListener(() {
      // int currentPage =
      //     (_scrollController.offset / MediaQuery.of(context).size.width)
      //         .round();
      double controllerHeight = _scrollController.offset;
      if (_scrollController.position.extentAfter == 0.0) {
        context
            .read<HomeControlBloc>()
            .add(const HomeControlEventChange(appBarHeaders: 0));
      } else if (controllerHeight < homeHeight) {
        context
            .read<HomeControlBloc>()
            .add(const HomeControlEventChange(appBarHeaders: 0));
      } else if (controllerHeight < (homeHeight + aboutHeight)) {
        context
            .read<HomeControlBloc>()
            .add(const HomeControlEventChange(appBarHeaders: 1));
      }
      // else if (controllerHeight <
      //     (introHeight + aboutHeight + projectHeight)) {
      //   context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(2));
      // }
      else {
        context
            .read<HomeControlBloc>()
            .add(const HomeControlEventChange(appBarHeaders: 0));
      }
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
          // double offset = state.homeControlModel.pageIndex *
          //     MediaQuery.of(context).size.width;

          // _scrollController.animateTo(
          //   offset,
          //   duration: duration,
          //   curve: Curves.easeInOut,
          // );
          int currentPage = state.homeControlModel.pageIndex;
          log("$currentPage this is current page");
          if (currentPage == 0) {
            Scrollable.ensureVisible(
              home.currentContext!,
              duration: duration,
            );
          }
          if (currentPage == 1) {
            Scrollable.ensureVisible(
              aboutMe.currentContext!,
              duration: duration,
            );
          }
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.width * .08),
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  children: [
                    Home(key: home),
                    AboutMe(key: aboutMe),
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
