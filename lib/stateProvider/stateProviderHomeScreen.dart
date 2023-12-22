import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stateProvider = StateProvider((ref) => 0);


class StateHomeScreen extends ConsumerWidget {
   const StateHomeScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return  Scaffold(
      body: Consumer(
        builder: (context,ref,child){
          int count = ref.watch<int>(stateProvider);
          return Center(
            child: Text(count.toString()),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){
        ref.read(stateProvider.notifier).state++;

      } ),
    );
    
  }

}
