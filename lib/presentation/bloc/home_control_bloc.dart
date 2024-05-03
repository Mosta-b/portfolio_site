import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'home_control_event.dart';
part 'home_control_state.dart';

class HomeControlBloc extends Bloc<HomeControlEvent, HomeControlState> {
  HomeControlBloc()
      : super(
          const HomeControlState(
            exception: null,
            homeControlModel: 0,
            isLoading: true,
          ),
        ) {
    on<HomeControlEvent>((event, emit) {});
    on<HomeControlEventChange>(
      (event, emit) {
        final numberOfIndex = event.appBarHeaders;
        emit(
          HomeControlState(
            homeControlModel: numberOfIndex,
            exception: null,
            isLoading: !state.isLoading,
          ),
        );
      },
    );
  }
}
