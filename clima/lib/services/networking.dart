import 'dart:convert';
import 'package:http/http.dart' as http;


class Networking{
  Networking({this.url});
  final String url;

  Future getData()async{
    http.Response res = await http.get(Uri.parse(url));
    if(res.statusCode == 200){
      //executing the logic ==> extracting more data
      String rawData = res.body;
      var decodedRawData = jsonDecode(rawData);
      return decodedRawData;
    } else throw "Data could not be retreived";
  }
}