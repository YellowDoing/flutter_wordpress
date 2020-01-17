import 'package:flutter_wordpress/util/app_util.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


typedef void SuccessCallBack(Map<String,dynamic> responseBody);

void post(String url, SuccessCallBack success) async {


  var response = await http.post(url);


  print(response.body);

  if (response.statusCode == 200) {
    var responseBody = convert.jsonDecode(response.body);
    success(responseBody);
  } else {
    toast('网络连接失败，请重试');
  }
}



void get(String url, SuccessCallBack success) async{
  var response = await http.get(url);
  print(response.body);
  if (response.statusCode == 200) {
    var responseBody = convert.jsonDecode('{"data":${response.body}}');
    success(responseBody);
  } else {
    toast('网络连接失败，请重试');
  }
}

