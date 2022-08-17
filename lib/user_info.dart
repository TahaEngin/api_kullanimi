import 'package:api_kullanimi/service.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
   List<User> users2;
   int index2;
   UserInfo(this.index2,this.users2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(users2[index2].id.toString()),
          Text(users2[index2].name!),
          Text(users2[index2].username!),
          Text(users2[index2].email!),
          Text(users2[index2].address!.street!),
          Text(users2[index2].address!.suite!),
          Text(users2[index2].address!.city!),
          Text(users2[index2].address!.city!),
          Text(users2[index2].address!.zipcode!),
          Text(users2[index2].address!.geo!.lat!),
          Text(users2[index2].address!.geo!.lng!),
          Text(users2[index2].phone!),
          Text(users2[index2].website!),
          Text(users2[index2].company!.name!),
          Text(users2[index2].company!.catchPhrase!),
          Text(users2[index2].company!.bs!),
        ],
      ),
    );
  }
}