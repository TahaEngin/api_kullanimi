import 'service.dart';
import 'package:dio/dio.dart';
late final UserService userService;
  List<User> users = [];
  void initState() {
    initState();
    userService = UserService1(Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/users')));
  }
  Future<void> fetch() async{
    initState();
    users = await userService.fetchUsers() ?? [];
  }