import 'package:shared_preferences/shared_preferences.dart';

class Sp {
  Future<void> saveSp(String email, String password, bool check) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("e1", email);
    sp.setString("p1", password);
    sp.setBool("check", check);
  }

  Future<Map> readSp() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? email = sp.getString("e1");
    String? password = sp.getString("p1");
    bool? check = sp.getBool("check");
    Map m1 = {"e1": email, "p1": password, "check": check};
    return m1;
  }

  Future<void> clearSp() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
  }
}
