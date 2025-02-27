import 'package:http/http.dart';
import 'dart:convert';
Future<String?>getRandomText() async{
  try{
    
    Uri url = Uri.parse('https://catfact.ninja/fact');
    Response response = await get(url);

    if (response.statusCode == 200) {
       var data  = jsonDecode(response.body);
      return  data['fact'] ?? 'No fact Found';
    }else {
      return 'Error: ${response.statusCode} ';
    }
  }catch(e){
    return 'Exception occurred : $e';
  }
}