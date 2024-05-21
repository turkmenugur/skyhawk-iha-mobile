import 'dart:convert';
import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:skyhawk_iha/model/loginModel.dart';

class loginService {
  Future<bool> login(String userCode) async {
    final url = "http://10.0.2.2:5180/api/Login";
    Response response = await http.get(Uri.parse(url));
    print("istek sonrasi");
    if (response.statusCode == 200) {
      print("Kod 200");
      Map<String, dynamic> decodedBody = jsonDecode(response.body)[0];
      print(decodedBody.keys);
      LoginModel usermodel = LoginModel.fromJson(decodedBody);
      if (usermodel.userCode == userCode) {
        return true;
      } else {
        return false;
      }
    } 
    else {
      throw Error();
    }
  }
}
