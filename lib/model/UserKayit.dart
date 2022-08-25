import 'package:shared_preferences/shared_preferences.dart';
import 'user.dart';

void kaydet(List<User> usersk) async{
    final kayitaraci = await SharedPreferences.getInstance();
    if(usersk != []){
      kayitaraci.setBool("kayit", true);
      kayitaraci.setInt("uzunluk", usersk.length);
      for(int i=0;i<usersk.length;i++){
        kayitaraci.setInt("id$i", usersk[i].id!);
        kayitaraci.setString("name$i", usersk[i].name!);
        kayitaraci.setString("username$i", usersk[i].username!);
        kayitaraci.setString("email$i", usersk[i].email!);
        kayitaraci.setString("a.street$i", usersk[i].address!.street!);
        kayitaraci.setString("a.suite$i", usersk[i].address!.suite!);
        kayitaraci.setString("a.city$i", usersk[i].address!.city!);
        kayitaraci.setString("a.zipcode$i", usersk[i].address!.zipcode!);
        kayitaraci.setString("a.g.lng$i", usersk[i].address!.geo!.lng!);
        kayitaraci.setString("a.g.lat$i", usersk[i].address!.geo!.lat!);
        kayitaraci.setString("phone$i", usersk[i].phone!);
        kayitaraci.setString("website$i", usersk[i].website!);
        kayitaraci.setString("c.name$i", usersk[i].company!.name!);
        kayitaraci.setString("c.catchPharse$i", usersk[i].company!.catchPhrase!);
        kayitaraci.setString("c.bs$i", usersk[i].company!.bs!);
      }
    }
  }