import 'package:api_kullanimi/model/service.dart';
import 'package:api_kullanimi/model/size_variables.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:dio/dio.dart';
import 'user_info.dart';
import 'package:api_kullanimi/model/fetchUsers.dart';
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
  Widget build(BuildContext context) {
    size_variables sizeVariables = size_variables(MediaQuery.of(context).size.height,MediaQuery.of(context).size.width);
    return Scaffold(
      appBar: AppBar(),
        body: FutureBuilder(future: fetch(),builder: ((context, snapshot) {
          return ListView.builder(
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => UserInfo(index, users))),
              child:Card(
                child: SizedBox(
                  height: sizeVariables.screenH/7,
                  child: Center(
                    child: Text(
                      users[index].name!,
                      style: TextStyle(fontSize: (sizeVariables.screenH/49)),)
                      )
                      )
                      )
                      );
              });
          }
        )
        )
        );
        }
  }
