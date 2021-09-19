import 'dart:convert';
import 'package:http/http.dart' as http;


class Networking{
  Networking({this.url});
  final String url;

  Future makeReq()async{
  http.Response res = await http.get(Uri.parse(this.url));
  if(res.statusCode == 200){
    String rawData = res.body;
    return jsonDecode(rawData);
  }else throw "Bad Timeout";
  }


}