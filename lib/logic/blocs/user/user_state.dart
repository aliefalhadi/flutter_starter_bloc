part of 'user_bloc.dart';

@immutable
abstract class UserState {}

class UserInitialState extends UserState {}
class UserFetchingState extends UserState {}

class UserFetchedState extends UserState {
  final List<UsersModel> usersModel;
  UserFetchedState({@required this.usersModel});
}

class UserErrorState extends UserState {}
class UserEmptyState extends UserState {}
