import 'package:api_kullanimi/service.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:dio/dio.dart';
import 'user_info.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final UserService userService;
  List<User> users = [];
  @override
  void initState() {
    super.initState();
    userService = UserService1(Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/users')));
  }
  Future<void> fetch() async{
    users = await userService.fetchUsers() ?? [];
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future: fetch(),builder: ((context, snapshot) {
        return ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => UserInfo(index, users))),
            child: Card(
              child: Text(users[index].name!)),
          );
        },
      );
      })),
    );
  }
}