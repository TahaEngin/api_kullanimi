import 'package:shared_preferences/shared_preferences.dart';
import 'user.dart';

void kayitsil() async{
    final kayitaraci = await SharedPreferences.getInstance();
      kayitaraci.clear();
      kayitaraci.setBool("kayit", false);
      }
    