import 'dart:convert';
import 'package:http/http.dart' as http;
class GetDataInfo {

  GetDataInfo(this.url);

  final String url;

  Future getdata() async{
    http.Response responses = await http.get(url);
    if (responses.statusCode == 200) {
      String data = responses.body;

      var decodedata = jsonDecode(data);

      return decodedata;
    }
    else {
      print(responses.statusCode);
    }
  }
}