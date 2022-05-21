import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    if(data.isEmpty){
      data = ModalRoute.of(context)?.settings.arguments as Map;
    }
    String background = data['isDaytime'] == true ? 'assets/day.jpg': 'assets/night.jpg';
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(background),
            fit: BoxFit.cover,
          )
        ),
        child: SafeArea(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                child: Column(
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                    primary: Colors.amber
                ),
                        onPressed: () async {
                          dynamic chosenLocation = await Navigator.pushNamed(context, "/choose_location");
                          setState(() {
                            data = chosenLocation;
                          });
                        },
                        icon: const Icon(Icons.edit_location, color: Colors.white,),
                        label: const Text("Edit Location", style: TextStyle(color: Colors.white),)),
                    const SizedBox(height: 20.0,),
                    Text(
                      data['location'],
                      style: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          data['time'],
                          style: const TextStyle(
                              fontSize: 50.0,
                              letterSpacing: 2.0,
                              color: Colors.white
                          ),
                        )
                      ],
                    )
                  ],
                )
            )
        ),
      )
    );
  }
}
