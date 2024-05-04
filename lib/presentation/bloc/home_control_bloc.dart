import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../data/home_control_model.dart';

part 'home_control_event.dart';
part 'home_control_state.dart';

class HomeControlBloc extends Bloc<HomeControlEvent, HomeControlState> {
  HomeControlBloc()
      : super(
          const HomeControlState(
            exception: null,
            homeControlModel: HomeControlModel(pageIndex: 0, isEvent: false),
            isLoading: true,
          ),
        ) {
    on<HomeControlEvent>((event, emit) {});
    on<HomeControlEventChange>(
      (event, emit) {
        final numberOfIndex = event.appBarHeaders;
        emit(
          HomeControlState(
            homeControlModel:
                HomeControlModel(pageIndex: numberOfIndex, isEvent: false),
            exception: null,
            isLoading: !state.isLoading,
          ),
        );
      },
    );
    on<HomeControlEventGoToPage>(
      (event, emit) {
        final numberOfIndex = event.appBarHeaders;
        emit(
          HomeControlState(
            homeControlModel:
                HomeControlModel(pageIndex: numberOfIndex, isEvent: true),
            exception: null,
            isLoading: !state.isLoading,
          ),
        );
      },
    );
  }
}
