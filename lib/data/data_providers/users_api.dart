import 'package:dio/dio.dart';
import 'package:flutter_startup/data/data_providers/base_api.dart';
import 'package:flutter_startup/data/models/UsersModel.dart';

class UserAPI{
  BaseAPI _baseAPI = BaseAPI();

  Future getUsersData()async{
    Response response = await _baseAPI.get('https://jsonplaceholder.typicode.com/users');
    return response;
  }
}