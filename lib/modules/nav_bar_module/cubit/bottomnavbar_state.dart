part of 'bottomnavbar_cubit.dart';

class BottomnavbarState extends Equatable {
  BottomnavbarState({
    required this.index,
  });
  final int index;
  final List<Widget> NavbarScreens = [
    ProfileNavigator(),
    //HomeNavigator(),
    HomeScreen(),
    SubscriptionsNavigator(),
    SettingsNavigator(),
  ];

  @override
  List<Object> get props => [index];
}

// class BottomnavbarInitial extends BottomnavbarState {}
