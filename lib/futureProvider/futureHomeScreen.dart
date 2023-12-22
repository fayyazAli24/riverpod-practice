import 'package:flutter/material.dart';
import 'package:practice_riverpod/futureProvider/weatherScreen.dart';

class FutureHomeScreen extends StatelessWidget {
  const FutureHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => WeatherScreen()));
          },
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.blue
            ),
            child: const Center(
              child: Text("Future provider"),
            ),
          ),
        ),
      ),
    );
  }
}
