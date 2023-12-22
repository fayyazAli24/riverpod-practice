import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_riverpod/futureProvider/futureHomeScreen.dart';
import 'package:practice_riverpod/stateNotifierProvider/stateNotifierHomeScreen.dart';

import 'package:practice_riverpod/stateProvider/stateProviderHomeScreen.dart';
import 'package:practice_riverpod/streamProvider/streamProviderHomeScreen.dart';

final stringProvider = Provider<String>(
        (ref) {
  return "practice riverpod";
  }
);

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StateNotifierHomeScreen(),
    );
  }
}
