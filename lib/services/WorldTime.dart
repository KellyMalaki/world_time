import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime{

  String time = "";
  String location;
  String url;
  String? flag;
  bool isDayTime = false;

  //WorldTime({required this.location, required this.url, this.flag});
  WorldTime({required this.location, required this.url, this.flag}){
    //If the flag is null then place the unknown flag
    flag ??= 'assets/unknown_flag.png';
  }

Future<void> getTime() async{
  try {
    Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);
    String dateTime = data['datetime'];
    int offset = int.parse(data['utc_offset'].substring(1,3));

    DateTime now = DateTime.parse(dateTime);
    time = DateFormat.jm().format(now.add(Duration(hours: offset)));
    isDayTime = now.hour >= 6 && now.hour < 18 ? true: false;
  }catch(e) {
    print("Error generated: $e");
    time = "An error occured while trying to get the time";
  }
}
}