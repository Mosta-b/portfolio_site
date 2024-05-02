part of 'home_control_bloc.dart';

@immutable
class HomeControlState {
  final HomeControlModel homeControlModel;
  final bool isLoading;
  final Exception? exception;

  const HomeControlState({
    required this.homeControlModel,
    required this.exception,
    required this.isLoading,
  });
}
