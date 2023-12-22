import 'package:flutter/material.dart';
import 'package:practice_riverpod/stateNotifierProvider/stateNotifierCounter.dart';

import '../streamProvider/NumberScreen.dart';


class StateNotifierHomeScreen extends StatelessWidget {
  const StateNotifierHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => StateNotifierCounter()));
          },
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.blue
            ),
            child: const Center(
              child: Text("State Notifier provider"),
            ),
          ),
        ),
      ),
    );
  }
}
