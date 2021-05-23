import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_startup/data/data_providers/users_api.dart';
import 'package:flutter_startup/data/models/UsersModel.dart';

class UserRepository{
  UserAPI _userAPI = UserAPI();

  Future<List<UsersModel>> getUsers() async{
    Response response = await _userAPI.getUsersData();

    final List<UsersModel> usersModel = usersModelFromJson(jsonEncode(response.data));
    return usersModel;
  }
}