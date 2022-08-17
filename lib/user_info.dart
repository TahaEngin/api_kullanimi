import 'package:api_kullanimi/service.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
   List<User> users2;
   int index2;
   UserInfo(this.index2,this.users2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: SizedBox(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          users2[index2].id.toString(),
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                          ),
                          ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                      height: 5,
                      ),
                      Text(
                          users2[index2].name!,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          ),
                          SizedBox(height: 3,),
                     Text(
                          users2[index2].username!,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: SizedBox(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                      child: Center(
                        child: Icon(Icons.map),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                      height: 5,
                      ),
                      Text(
                          users2[index2].address!.street!,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          users2[index2].address!.suite!,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          ),
                      ),
                     Padding(
                       padding: const EdgeInsets.all(2.0),
                       child: Text(
                            users2[index2].address!.city!,
                            style: TextStyle(
                              fontSize: 15
                            ),
                            ),
                     ),
                        Text(
                            users2[index2].address!.zipcode!,
                            style: TextStyle(
                              fontSize: 15
                            ),
                            ),
                            Row(
                              children: [
                                Text(users2[index2].address!.geo!.lat!,
                                style: TextStyle(fontSize: 10),),
                                SizedBox(width: 5,),
                                Text(users2[index2].address!.geo!.lng!,
                                style: TextStyle(fontSize: 10),),
                              ],
                            ),
                          SizedBox(
                            height: 5,
                          ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: SizedBox(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                      child: Center(
                        child: Icon(Icons.phone),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                      height: 5,
                      ),
                      Text(
                          users2[index2].email!,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          users2[index2].phone!,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          ),
                      ),
                        Text(
                            users2[index2].website!,
                            style: TextStyle(
                              fontSize: 15
                            ),
                            ),
                          SizedBox(
                            height: 5,
                          ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: SizedBox(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                      child: Center(
                        child: Icon(Icons.apartment),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                      height: 5,
                      ),
                      Text(
                          users2[index2].company!.name!,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          users2[index2].company!.catchPhrase!,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          ),
                      ),
                        Text(
                            users2[index2].company!.bs!,
                            style: TextStyle(
                              fontSize: 15
                            ),
                            ),
                          SizedBox(
                            height: 5,
                          ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}