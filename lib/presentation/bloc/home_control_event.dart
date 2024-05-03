part of 'home_control_bloc.dart';

@immutable
sealed class HomeControlEvent {
  const HomeControlEvent();
}

class HomeControlEventChange extends HomeControlEvent {
  final int appBarHeaders;

  const HomeControlEventChange({required this.appBarHeaders});
}

class HomeControlEventUpdateColorOfMenuButton extends HomeControlEvent {
  final int appBarHeaders;

  const HomeControlEventUpdateColorOfMenuButton({required this.appBarHeaders});
}
