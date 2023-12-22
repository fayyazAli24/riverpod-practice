import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_riverpod/stateNotifierProvider/utils.dart';




class StateNotifierCounter extends ConsumerWidget {
  const StateNotifierCounter({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return  Scaffold(
      body: Consumer(
        builder: (context,ref,child){
          int count = ref.watch(stateNotifier);
          return Center(
            child: Text(count.toString()),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed:(){
            ref.read(stateNotifier.notifier).increment();
          },child: Icon(Icons.crop_square_sharp), ),
    );

  }

}
