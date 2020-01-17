import 'package:fluttertoast/fluttertoast.dart';


///简单文本提示
void toast(String msg){
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1
  );
}