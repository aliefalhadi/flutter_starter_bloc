import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_startup/data/models/UsersModel.dart';
import 'package:flutter_startup/data/respositories/UserRepository.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository = UserRepository();
  UserBloc() : super(UserInitialState());

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    yield UserFetchingState();
    List<UsersModel> usersModel;
    try{
        if(event is GetUsersEvent){
          usersModel = await _userRepository.getUsers();
          yield UserFetchedState(usersModel: usersModel);
        }
    }catch(_){
      yield UserErrorState();
    }
  }
}
