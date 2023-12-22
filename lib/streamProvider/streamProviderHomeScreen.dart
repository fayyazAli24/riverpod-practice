import 'package:flutter/material.dart';
import 'package:practice_riverpod/futureProvider/weatherScreen.dart';

import 'NumberScreen.dart';

class StreamHomeScreen extends StatelessWidget {
  const StreamHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => NumberScreen()));
          },
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.blue
            ),
            child: const Center(
              child: Text("Stream provider"),
            ),
          ),
        ),
      ),
    );
  }
}
