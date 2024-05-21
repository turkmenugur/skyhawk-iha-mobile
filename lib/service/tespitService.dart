import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class tespitService {
  Future getAllTespitData() async {
    //İlerde kullanılacak.
    Response response = await http
        .post(Uri.parse("http://localhost:5180/api/Tespit/GetAllTespit"));

    if (response.statusCode == 200) {
      return response.body;
    } else {
      return false;
    }
  }

  Future getTespitby() async {
    Response response =
        await http.post(Uri.parse("http://localhost:5180/api/Tespit/"));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return false;
    }
  }
}
