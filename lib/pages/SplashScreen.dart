import 'package:flutter/material.dart';
import 'package:world_time/services/WorldTime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void setupWorldTime() async{
    WorldTime kenyanTime = WorldTime(location: "Nairobi", url: "Africa/Nairobi", flag: "kenya.png");
    await kenyanTime.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {'time': kenyanTime.time, 'location': kenyanTime.location, 'flag': kenyanTime.flag, 'isDaytime': kenyanTime.isDayTime});
  }
  @override
  void initState(){
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitPouringHourGlass(
          color: Colors.blue,
        ),
      ),
    );
  }
}
