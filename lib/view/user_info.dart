import 'package:api_kullanimi/viewmodel/card.dart';
import 'package:api_kullanimi/viewmodel/column.dart';
import 'package:api_kullanimi/viewmodel/container.dart';
import 'package:api_kullanimi/viewmodel/row.dart';
import 'package:api_kullanimi/model/service.dart';
import 'package:api_kullanimi/viewmodel/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:api_kullanimi/viewmodel/nothing.dart';
import 'package:api_kullanimi/model/size_variables.dart';

class UserInfo extends StatelessWidget {
   List<User> users2;
   int index2;
   UserInfo(this.index2,this.users2);
  @override
  Widget build(BuildContext context) {
    size_variables sizeVariables = size_variables(MediaQuery.of(context).size.height,MediaQuery.of(context).size.width);
     var route = users2[index2];
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardTasarim(
                container1(
                  text1(route.id.toString(), sizeVariables.screenH/25)), 
                    column1(
                      text1(route.name!,sizeVariables.screenH/49), 
                      text1(route.username!,sizeVariables.screenH/76), 
                     nothing(),nothing(),nothing())),
              CardTasarim(
                container1(Icon(Icons.map)), 
                column1(
                  text1(route.address!.street!,sizeVariables.screenH/49), 
                  text1(route.address!.suite!, sizeVariables.screenH/49), 
                  text1(route.address!.city!, sizeVariables.screenH/49), 
                  text1(route.address!.zipcode!, sizeVariables.screenH/49),
                  row1(
                    text1(route.address!.geo!.lat!, sizeVariables.screenH/98),
                    text1(route.address!.geo!.lng!, sizeVariables.screenH/98)))),
              CardTasarim(
                container1(Icon(Icons.phone)), 
                column1(
                  text1(route.email!,sizeVariables.screenH/49), 
                  text1(route.phone!, sizeVariables.screenH/49), 
                  text1(route.website!, sizeVariables.screenH/49), 
                 nothing(),nothing())),
                  CardTasarim(
                    container1(Icon(Icons.apartment)), 
                    column1(
                      text1(route.company!.name!,sizeVariables.screenH/49), 
                      text1(route.company!.catchPhrase!,sizeVariables.screenH/49), 
                      text1(route.company!.bs!,sizeVariables.screenH/49),nothing(),nothing())),
                  ],),
        ),
      ),
            );
  }
}