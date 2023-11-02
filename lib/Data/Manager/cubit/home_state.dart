part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class SucsessUserData extends HomeState {
  final List<UsersModel> userList;

  SucsessUserData({required this.userList});
}

final class FaliureUserData extends HomeState {
  final String errMessage;

  FaliureUserData({required this.errMessage});
}
