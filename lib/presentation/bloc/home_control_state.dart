part of 'home_control_bloc.dart';

@immutable
abstract class ControlState {
  const ControlState();
}

class ControlStateInitial extends ControlState {
  const ControlStateInitial();
}

@immutable
class HomeControlState extends ControlState with EquatableMixin {
  final HomeControlModel homeControlModel;
  final bool isLoading;
  final Exception? exception;

  const HomeControlState({
    required this.homeControlModel,
    required this.exception,
    required this.isLoading,
  });

  @override
  List<Object?> get props => [homeControlModel.pageIndex];
}

@immutable
class HomeControlColorState extends ControlState with EquatableMixin {
  final HomeControlModel homeControlModel;

  const HomeControlColorState({
    required this.homeControlModel,
  });

  @override
  List<Object?> get props => [homeControlModel.pageIndex];
}
