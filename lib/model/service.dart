import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:api_kullanimi/model/user.dart';

abstract class UserService{
  UserService(this.dio);
  final Dio dio;
  Future<List<User>?> fetchUsers();
}

class UserService1 extends UserService{
  UserService1(Dio dio) : super(dio);

  @override
  Future<List<User>?> fetchUsers() async{
    final response = await dio.get('https://jsonplaceholder.typicode.com/users');
    if(response.statusCode == HttpStatus.ok){
      final Jsonbody = response.data;
      if(Jsonbody is List){
        return Jsonbody.map((json) => User.fromJson(json)).toList();
      }
    }
    return null;
  }
}