part of 'home_control_bloc.dart';

@immutable
class HomeControlState extends Equatable {
  final HomeControlModel homeControlModel;
  final bool isLoading;
  final Exception? exception;

  const HomeControlState({
    required this.homeControlModel,
    required this.exception,
    required this.isLoading,
  });

  @override
  List<Object?> get props => [isLoading, homeControlModel];
}
