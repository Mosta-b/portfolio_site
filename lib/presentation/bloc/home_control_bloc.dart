import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_site/core/enum/enum.dart';

import '../../data/home_control_model.dart';

part 'home_control_event.dart';
part 'home_control_state.dart';

class HomeControlBloc extends Bloc<HomeControlEvent, HomeControlState> {
  HomeControlBloc()
      : super(
          const HomeControlState(
            exception: null,
            homeControlModel: HomeControlModel(partOfBody: AppBarHeaders.home),
            isLoading: true,
          ),
        ) {
    on<HomeControlEvent>((event, emit) {});
  }
}
