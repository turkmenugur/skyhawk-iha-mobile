import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:skyhawk_iha/model/tespitModel.dart';

class tespitService {
  Future<TespitModel> getAllTespitData() async {
    //İlerde kullanılacak.
    print("istek oncesi");
    final url = "http://10.0.2.2:5180/api/Tespit/GetAllTespit";
    Response response = await http.get(Uri.parse(url));
    print("istek sonrasi");
    if (response.statusCode == 200) {
      print("Kod 200");
      Map<String, dynamic> decodedBody = jsonDecode(response.body)[0];
      print(decodedBody.keys);

      return TespitModel.fromJson(decodedBody);
    } else {
      throw Error();
    }
  }

  Future getTespitby(int id) async {
    final url =
        "http://10.0.2.2:5180/api/Tespit/GetTespitby/${id.toString()}";
    Response response = await http.post(Uri.parse(url));
    if (response.statusCode == 200) {
      final decodedBody = jsonDecode(response.body);
      return decodedBody;
    } else {
      return false;
    }
  }
}
