import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../data/home_control_model.dart';

part 'home_control_event.dart';
part 'home_control_state.dart';

class HomeControlBloc extends Bloc<HomeControlEvent, ControlState> {
  HomeControlBloc()
      : super(
          const ControlStateInitial(),
        ) {
    on<HomeControlEventChange>(_changeAppBarHeadersColorByColor);
    on<HomeControlEventGoToPage>(_changeAppBarHeadersIndex);
  }
  int _appBarHeaderIndex = 0;
  int get appBarHeaderIndex => _appBarHeaderIndex;

  FutureOr<void> _changeAppBarHeadersIndex(
    HomeControlEventGoToPage event,
    Emitter<ControlState> emit,
  ) {
    _appBarHeaderIndex = event.appBarHeaders;
    emit(
      HomeControlState(
        homeControlModel:
            HomeControlModel(pageIndex: _appBarHeaderIndex, isEvent: true),
        exception: null,
        isLoading: false,
      ),
    );
  }

  FutureOr<void> _changeAppBarHeadersColorByColor(
    HomeControlEventChange event,
    Emitter<ControlState> emit,
  ) {
    _appBarHeaderIndex = event.appBarHeaders;
    emit(
      HomeControlColorState(
        homeControlModel:
            HomeControlModel(pageIndex: _appBarHeaderIndex, isEvent: false),
      ),
    );
  }
}
