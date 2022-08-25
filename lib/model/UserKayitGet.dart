import 'dart:ffi';

import 'package:shared_preferences/shared_preferences.dart';
import 'user.dart';

kayitgetir() async{
    final kayitaraci = await SharedPreferences.getInstance();
    int uzunluk = kayitaraci.getInt("uzunluk")!;
    List<User> usersg = [];
      for(int i=0;i<uzunluk;i++){
        usersg[i].id =kayitaraci.getInt("id$i");
        usersg[i].name = kayitaraci.getString("name$i");
        usersg[i].username = kayitaraci.getString("username$i");
        usersg[i].email = kayitaraci.getString("email$i");
        usersg[i].address!.street =kayitaraci.getString("a.street$i");
        usersg[i].address!.suite = kayitaraci.getString("a.suite$i");
        usersg[i].address!.city = kayitaraci.getString("a.city$i");
        usersg[i].address!.zipcode = kayitaraci.getString("a.zipcdode$i");
        usersg[i].address!.geo!.lng = kayitaraci.getString("a.g.lng$i");
        usersg[i].address!.geo!.lat = kayitaraci.getString("a.g.lat$i");
        usersg[i].phone = kayitaraci.getString("phone$i");
        usersg[i].website = kayitaraci.getString("website$i");
        usersg[i].company!.name = kayitaraci.getString("c.name$i");
        usersg[i].company!.catchPhrase = kayitaraci.getString("c.catchPharse$i");
        usersg[i].company!.bs = kayitaraci.getString("c.bs$i");
    }
    return usersg;
  }
  Future<bool> kayitdurum()async {
    final kayitaraci = await SharedPreferences.getInstance();
    bool kayitdurum;
    if(kayitaraci.getBool("kayit") == null){
      kayitdurum = false;
    }
    else{
      kayitdurum = kayitaraci.getBool("kayit")!;
    }
    return kayitdurum;
  }